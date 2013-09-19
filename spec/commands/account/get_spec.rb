require_relative '../../spec_helper'

describe RestPack::Account::Service::Commands::Account::Get do
  is_required :id

  let(:response) { subject.class.run(params) }
  let(:params) { {} }

  before do
    @account = create(:account)
  end

  context 'with valid params' do
    let(:params) { {
      id: @account.id
    } }

    it 'is valid' do
      response.success?.should == true
    end

    it 'return the group' do
      response.result[:accounts].length.should == 1
      response.result[:accounts].first[:id].should == @account.id.to_s
    end
  end

  context 'with invalid :id' do
    let(:params) { {
      id: 142857
    }}

    it 'is :not_found' do
      response.success?.should == false
      response.result.should == {}
      response.status.should == :not_found
    end
  end
end
