module Commands::Accounts::Account
  class Create < RestPack::Service::Commands::Create
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
  end
end
