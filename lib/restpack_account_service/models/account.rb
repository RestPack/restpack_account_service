module RestPack::Account::Service::Models
  class Account < ActiveRecord::Base
    self.table_name = :restpack_accounts

    attr_accessible :created_by, :name
    validates_presence_of :created_by, :name

    validates :name, :length => { :maximum => 256 }
  end
end
