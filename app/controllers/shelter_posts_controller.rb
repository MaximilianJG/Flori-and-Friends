class ShelterPostsController < ApplicationController
  def index
    @posts = ShelterPost.all
  end
end
