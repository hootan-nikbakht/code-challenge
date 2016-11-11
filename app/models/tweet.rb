class Tweet

  attr_reader :uid, :name, :username, :body, :created_at

  def initialize(uid, name, username, body, created_at)
    @uid, @name, @username, @body, @created_at = uid, name, username, body, created_at
  end

  class << self

    def get_tweets(user=nil, handle=nil, max_id=nil, limit=25)
      tweets = []
      hash = {:count => limit}
      hash[:max_id] = max_id if max_id.present?

      begin
        tweets = Rails.cache.fetch("#{handle.strip}#{max_id}", expires_in: 5.minutes) do
          client(user).user_timeline(handle.strip, hash).each do |t|
            text = link_to_mentions (t.text)
            created_at = t.created_at.to_date.strftime('%b %d, %y')
            t = Tweet.new(t.id, t.user.name, t.user.screen_name, text, created_at)

            tweets << t

          end if handle

          tweets
        end


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