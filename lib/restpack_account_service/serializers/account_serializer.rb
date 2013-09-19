module RestPack::Account::Service::Serializers
  class AccountSerializer
    include RestPack::Serializer

    self.model_class = RestPack::Account::Service::Models::Account
    self.key = :accounts

    attributes :id, :application_id, :created_by, :name, :href
  end
end
