class CreatePokemonsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :poke_type
      t.string :attack
      t.boolean :fainted
    end
  end
end
