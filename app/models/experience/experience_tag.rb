class ExperienceTag
  include ActiveModel::Model
  attr_accessor :title, :category_id, :period_id, :tags, :stress, :user_id

  with_options presence: true do
    validates :title, length: { maximum: 100 }
    validates :category_id, numericality: { other_than: 0, message: 'を入力してください' }
    validates :period_id,   numericality: { other_than: 0, message: 'を入力してください' }
    validates :stress, length: { maximum: 100 }
    validates :content
    validates :user_id
  end
  validates :tags_size, numericality: { less_than: 11 }, if:

  def initialize(attributes = {})
    super
    @experience = set_experience
  end

  def save
    return false unless valid?

    experience = Experience.create(set_params_experience_tag)
    save_tags(tags, experience.id) unless tags.nil?
    experience
  end

  def update(experience)
    return false unless valid?

    experience.update(set_params_experience_tag)
    save_tags(tags, experience.id) unless tags.nil?
    delete_tag_relation(tags, experience.id)
    experience
  end

  def content
    @experience.content
  end

  def content=(data)
    @experience = set_experience
    @experience.content = data
    @content = @experience.content
  end

  private

  def tags_size
    tags.nil? ? 0 : tags.split('、').size
  end

  def save_tags(tags, experience_id)
    tags.split('、').each do |tag_name|
      name = tag_name.gsub(' ', '')
      tag  = Tag.where(name: name).first_or_initialize
      tag.save
      save_tag_relation(tag.id, experience_id)
    end
  end

  def save_tag_relation(tag_id, experience_id)
    unless ExperienceTagRelation.find_by(experience_id: experience_id, tag_id: tag_id)
      ExperienceTagRelation.create(experience_id: experience_id, tag_id: tag_id)
    end
  end

  def delete_tag_relation(tags, experience_id)
    tag_relation  = ExperienceTagRelation.where(experience_id: experience_id)
    registed_tags = tag_relation.map { |r| r.tag.name }
    new_tags      = tags.split('、')
    diff = registed_tags - new_tags
    unless diff.nil?
      diff.each do |d|
        tag_id = Tag.find_by(name: d)
        ExperienceTagRelation.find_by(tag_id: tag_id).destroy
      end
    end
  end

  def set_experience
    Experience.new(set_params_experience_tag)
  end

  def set_params_experience_tag
    { title: title, category_id: category_id, period_id: period_id, content: @content, stress: stress, user_id: user_id }
  end
end
