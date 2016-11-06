class TwitterController < ApplicationController

  before_action :authenticate_user, only: [:search_handles]

  def index
    @tweets = []
  end

  def search_handles
    @tweets = []
    @handle_query = params[:hq]
    redirect_to root_path if @handle_query.empty?

    return if not logged_in?

    # get 25 tweets for twitter handle
    @tweets = Tweet.get_tweets(user=current_user, handle=@handle_query)

  end
end

