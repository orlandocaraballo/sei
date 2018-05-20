class Trainer < ApplicationRecord
  has_many :pokemons

  def name_plus_age
    "#{self.name} | #{self.age}"
  end
end
