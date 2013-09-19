module RestPack::Account::Service::Commands
  module Account
    class Create < RestPack::Service::Command
      required do
        array :accounts do
          hash do
            required do
              integer :created_by
              string :name
            end
          end
        end
      end

      def execute
        accounts = RestPack::Account::Service::Models::Account.create!(inputs[:accounts])
        RestPack::Account::Service::Serializers::AccountSerializer.serialize(accounts)
      end
    end
  end
end
