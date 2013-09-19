require_relative '../../spec_helper'

describe RestPack::Account::Service::Commands::Account::Create do
  #TODO: GJ: validate array
  # is_required :created_by, :name

  context 'creating an account' do
    let(:response) { subject.class.run(params) }

    context 'with valid params' do
      let(:account) { {
        application_id: 111,
        created_by: 234,
        name: 'My New Group'
      } }
      let(:params) { {
        accounts: [account]
      } }

      it 'returns the newly created account' do
        response.success?.should == true

        accounts = response.result[:accounts]
        accounts.length.should == 1

        accounts.first[:application_id].should == 111
        accounts.first[:created_by].should == 234
        accounts.first[:name].should == "My New Group"
      end
    end
  end
end
