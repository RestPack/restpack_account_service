module RestPack::Account::Service::Models
  class Account < ActiveRecord::Base
    self.table_name = :restpack_accounts

    attr_accessible :application_id, :created_by, :name
    validates_presence_of :application_id, :created_by, :name

    validates :name, :length => { :maximum => 256 }
  end
end
