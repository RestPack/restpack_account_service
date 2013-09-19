module RestPack::Account::Service
  class Tasks
    def self.load_tasks
      load "restpack_account_service/tasks/db.rake"
    end
  end
end
