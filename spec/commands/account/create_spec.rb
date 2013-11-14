require 'spec_helper'

describe Commands::Accounts::Account::Create do
  it_acts_as_create_command(:accounts, :account)

  pending 'validate command inputs'
end
