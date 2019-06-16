FactoryBot.define do
  factory :message do
    description { Faker::Lorem.word }
    email { Faker::Internet.email }
    question { false }
  end
end