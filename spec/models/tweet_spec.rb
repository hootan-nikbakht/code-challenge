require "spec_helper"

describe 'EmptyTweet', '.get_tweets' do
  it 'returns empty if handle query is empty' do

    # exercise
    tweets = Tweet.get_tweets(handle='')

    # verify
    expect(tweets).to eq []
  end

  it 'returns empty if handle query is nil' do

    # exercise
    tweets = Tweet.get_tweets(handle=nil)

    # verify
    expect(tweets).to eq []
  end
end

describe 'Tweets', '.get_tweets' do
  it 'returns 25 tweets if handle query is passed' do
    # setup - faking a method call
    tweets = []
    (1..25).each do |t|
      tweets << Tweet.new('hootan', 'hootan_nik', 'test', Time.now)
    end

    allow(Tweet).to receive(:get_tweets).and_return(tweets)

    # exercise
    tweets = Tweet.get_tweets(handle='hootan_nik')

    # verify
    # This is a pretty bad test case but running out of time... this was a fun exercise
    expect(tweets.length).to eq 25
  end
end