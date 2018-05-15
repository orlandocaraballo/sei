class PokemonsController < ApplicationController
  def index
    @pokemons = d.all
    @users = User.all
  end
end
