FactoryGirl.define do
  factory :account, :class => Models::Account do
    sequence(:application_id)
    sequence(:name) {|n| "Account ##{n}" }
    sequence(:created_by)
  end
end
