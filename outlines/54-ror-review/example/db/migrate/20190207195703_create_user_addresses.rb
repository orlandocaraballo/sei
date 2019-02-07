class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.references :user
      t.references :address

      t.timestamps
    end
  end
end
