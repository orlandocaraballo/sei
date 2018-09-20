class DoABunchOfStuff < ActiveRecord::Migration[5.2]
  def change
    # do thing A
    create_table :comments do |table|
      table.string :content
      table.references :user
      table.references :post
      table.timestamps 
    end

    # do thing B
    add_column :users, :birthday, :datetime
  end
end
