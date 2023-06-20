FactoryBot.define do
  factory :reservation do
    start_date { Faker::Date.forward(days: 23) }
    days_number { Faker::Number.between(from: 1, to: 30) }
    user
    laborer
  end
end