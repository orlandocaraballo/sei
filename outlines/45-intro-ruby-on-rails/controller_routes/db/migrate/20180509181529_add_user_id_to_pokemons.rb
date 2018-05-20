class AddUserIdToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :user_id, :integer
  end
end
