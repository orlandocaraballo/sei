class ChangeUserIdToTrainerIdInPokemons < ActiveRecord::Migration[5.2]
  def change
    rename_column :pokemons, :user_id, :trainer_id
  end
end
