FactoryBot.define do
  factory :experience do
    title       { Faker::Lorem.characters(number: rand(1..100)) }
    category_id { Faker::Number.within(range: 1..3) }
    period_id   { Faker::Number.within(range: 1..7) }
    stress      { Faker::Lorem.characters(number: rand(1..100)) }
    association :user
    after(:build) do |experience|
      create(:experience_like, experience: experience, user: experience.user)
      create_list(:experience_like, rand(1..25), experience: experience, user: create(:user))
    end
  end
end
