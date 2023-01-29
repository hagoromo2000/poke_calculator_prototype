class AddAbilitiesToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :ability1, :string
    add_column :pokemons, :ability2, :string
    add_column :pokemons, :ability3, :string
  end
end
