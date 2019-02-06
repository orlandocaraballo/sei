class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_admin, :boolean
  end
end
