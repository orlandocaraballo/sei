class RenameUsersToTrainers < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :trainers
  end
end
