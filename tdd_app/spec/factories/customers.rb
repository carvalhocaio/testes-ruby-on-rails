FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    email { Faker::Name.name }
    phone { Faker::Internet.name }
    smoker { %w[S N].sample }
    avatar { "#{Rails.root}/spec/fixtures/avatar.png" }
  end
end
