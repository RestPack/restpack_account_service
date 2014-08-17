require 'spec_helper'

describe Account::Models::Account do
  it { should validate_presence_of(:application_id) }
  it { should validate_presence_of(:created_by) }
  it { should validate_presence_of(:name) }

  it { should ensure_length_of(:name).is_at_most(256) }
end
