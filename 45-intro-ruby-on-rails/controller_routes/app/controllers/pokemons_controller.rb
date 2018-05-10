class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    @users = User.all
  end
end
