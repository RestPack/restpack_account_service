FactoryGirl.define do
  factory :api_account, class: Hash do
    sequence(:name) {|n| "Account ##{n}" }
    sequence(:application_id)
    sequence(:created_by)

    initialize_with { attributes }
  end
end
