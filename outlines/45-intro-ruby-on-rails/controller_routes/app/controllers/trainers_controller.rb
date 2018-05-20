class TrainersController < ApplicationController
  def index
    @users = Trainer.all
  end

  def weird
    @name, @age = generate_variables()
  end

  private

  def generate_variables
    ["orlando", 34]
  end

  def something_else
  end
end
