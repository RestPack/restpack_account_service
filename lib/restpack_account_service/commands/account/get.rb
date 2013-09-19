module RestPack::Account::Service::Commands
  module Account
    class Get < RestPack::Service::Command
      required do
        integer :id
      end

      def execute
        result = RestPack::Account::Service::Serializers::AccountSerializer.resource(
          inputs
        )

        if result[:accounts].empty?
          status :not_found
        else
          result
        end
      end
    end
  end
end
