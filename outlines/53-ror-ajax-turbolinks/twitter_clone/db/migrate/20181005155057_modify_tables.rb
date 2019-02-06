class ModifyTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :username
    remove_column :users, :password

    add_column :users, :email, :string
    add_column :users, :password_digest, :string
  end
end
