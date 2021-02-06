class DeadDogsController < ApplicationController
  def index
    @dogs = DeadDog.all
  end
end
