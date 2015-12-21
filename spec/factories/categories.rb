FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| "My Category #{n}" }
  end
end
