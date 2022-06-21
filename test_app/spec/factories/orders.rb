FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Pedido Número - #{n}" }
    association :customer, factory: :customer # same that customer
  end
end
