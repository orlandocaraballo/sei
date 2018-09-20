class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |table|
      table.string :username
      table.string :password
      table.timestamps
    end
  end
end
