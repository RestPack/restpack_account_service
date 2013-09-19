FactoryGirl.define do
  factory :account, :class => RestPack::Account::Service::Models::Account do
    sequence(:name) {|n| "Account ##{n}" }
    sequence(:created_by)
  end
end
