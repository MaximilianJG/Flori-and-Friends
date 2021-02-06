class NewsPostsController < ApplicationController
  def index
    @posts = NewsPost.all.order(created_at: :desc)
  end
end
