module RestPack::Account::Service::Commands
  module Account
    class Create < RestPack::Service::Command
      required do
        array :accounts do
          hash do
            required do
              integer :application_id
              integer :created_by
              string :name
            end
          end
        end
      end

      def execute
        accounts = Models::Account.create!(inputs[:accounts])
        Serializers::Account.serialize(accounts)
      end
    end
  end
end
