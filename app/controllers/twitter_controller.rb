class TwitterController < ApplicationController

  before_action :authenticate_user, only: [:search_handles]

  def index
    @tweets = []
  end

  def search_handles
    @tweets = []
    @handle_query = params[:hq]

    # get 25 tweets for twitter handle
    @tweets = Tweet.get_tweets(user=current_user, handle=@handle_query)

  end
end

