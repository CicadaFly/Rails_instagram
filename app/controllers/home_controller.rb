class HomeController < ApplicationController
  before_action :set_feeds
  def index
  end

  private
  def set_feeds
    @feeds = Post.where(user: [current_user, current_user.followings].flatten).order(created_at: :desc)
  end
end
