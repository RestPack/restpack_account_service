module RestPack::Account::Service::Commands
  module Account
    class Get < RestPack::Service::Command
      required do
        integer :id
        integer :application_id
      end

      def execute
        scope = Models::Account.all
        scope = scope.where(application_id: application_id)
        result = Serializers::Account.resource(inputs, scope)

        if result[:accounts].empty?
          status :not_found
        else
          result
        end
      end
    end
  end
end
