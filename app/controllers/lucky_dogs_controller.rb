class LuckyDogsController < ApplicationController
  def index
    @dogs = LuckyDog.all
  end
end
