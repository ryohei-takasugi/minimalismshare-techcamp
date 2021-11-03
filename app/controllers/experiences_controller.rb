class ExperiencesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_ransack,        only: [:index, :search_article]
  before_action :set_tag,            only: [:index, :search_article]
  before_action :set_experience,     only: [:show, :edit, :update]

  def index
  end

  def new
    @experience_tag = ExperienceTag.new
    @comment = ExperienceComment.new
  end

  def create
    @experience_tag = ExperienceTag.new(experience_tag_params)
    if @experience_tag.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = ExperienceComment.new
  end

  def edit
    @experience_tag = ExperienceTag.new(
      title:       @experience.title,
      tags:        @experience.tags.map { |tag| tag.name },
      stress:      @experience.stress,
      category_id: @experience.category_id,
      period_id:   @experience.period_id,
      content:     @experience.content
    )
  end

  def update
    @experience_tag = ExperienceTag.new(
      title:       experience_tag_params[:title],
      tags:        experience_tag_params[:tags],
      stress:      experience_tag_params[:stress],
      category_id: experience_tag_params[:category_id],
      period_id:   experience_tag_params[:period_id],
      content:     experience_tag_params[:content]
    )
    @experience_tag.user_id = experience_tag_params[:user_id]
    if @experience_tag.update(@experience)
      redirect_to experience_path(params[:id])
    else
      render :edit
    end
  end

  def search_tag
    return nil if params[:keyword].blank?

    tags = Tag.where(['name LIKE ?', "%#{params[:keyword]}%"])
    render json: { keyword: tags }
  end

  def search_article
    render :index
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def set_ransack
    @q = Experience.ransack(search_params)
    @q.sorts = (search_params.nil? ? 'updated_at desc' : search_params[:sorts])
    @experiences = @q.result(distinct: true)
                     .includes(:user, :experience_tag_relations, :tags)
                     .page(params[:page])
                     .per(2)
  end

  def set_tag
    @search_tag = Tag.all
  end

  def experience_tag_params
    params.require(:experience_tag)
          .permit(:title, :tags, :stress, :category_id, :period_id, :content)
          .merge(user_id: current_user.id)
  end

  def search_params
    if params[:q].blank?
      params[:q]
    else
      params.require(:q)
            .permit(:title_or_stress_or_content_body_cont, :tags_id_eq, :category_id_eq, :period_id_eq, :sorts)
    end
  end
end
