class Tweet

  attr_reader :name, :username, :body, :created_at

  def initialize(name, username, body, created_at)
    @name, @username, @body, @created_at = name, username, body, created_at
  end

  class << self

    def get_tweets(user=nil, handle=nil, limit=25)
      tweets = []
      begin
        client(user).user_timeline(handle).take(limit).each do |t|
          text = link_to_mentions (t.text)
          created_at = t.created_at.to_date.strftime('%b %d, %y')
          t = Tweet.new(t.user.name, t.user.screen_name, text, created_at)

          tweets << t
        end if handle
      rescue; end
      tweets
    end

    def client(user)
      @client ||= Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['twitter_api_key']
        config.consumer_secret     = ENV['twitter_secret_key']
        config.access_token        = user.token
        config.access_token_secret = user.secret
      end
    end

    private
      def link_to_mentions(text)
        text.gsub(/@(\w+)/, "<a target='_blank' href='https://twitter.com/%s'>%s</a>" % %W(\\1 \\1))
      end

  end

end