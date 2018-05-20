class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hp
      t.integer :attack_power

      t.timestamps
    end
  end
end
