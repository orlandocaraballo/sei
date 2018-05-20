class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    @trainers = Trainer.all
    @users = @trainers

    fancy_name
  end

  private

  def fancy_name
    name = "orlando"
    "#{name} is fancy"
  end
end
