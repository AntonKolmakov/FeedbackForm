FactoryBot.define do
  factory :message do
    description { Faker::Lorem.word }
    email { Faker::Internet.email }

    after :create do |message|
      create :answer, message: message
    end
  end
end