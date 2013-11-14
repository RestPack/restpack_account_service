module Serializers::Accounts
  class Account
    include RestPack::Serializer

    self.model_class = Models::Accounts::Account
    self.key = :accounts

    attributes :id, :application_id, :created_by, :name, :href

    can_filter_by :application_id
  end
end
