class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :restpack_accounts do |t|
      t.integer :created_by,      :null => false
      t.integer :application_id,  :null => false
      t.string  :name,            :null => false, :limit => 256

      t.timestamps
    end
  end
end
