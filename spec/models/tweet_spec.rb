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

# describe 'TweetsPagination' do
#   describe 'call twitter api with max id' do
#      it 'gets a response from an api' do
#        VCR.use_cassette 'model/api_response' do
#           response = call_api(api_url)
#           response.first.should == &quot;hello world&quot;
#        end
#      end
#   end
# end

# describe 'Tweets', '.get_tweets' do
#   it 'returns 25 tweets if handle query is passed' do
#     # setup - faking a method call
#     tweets = []
#     # (1..25).each do |t|
#     #   tweets << Tweet.new('hootan', 'hootan_nik', 'test', Time.now)
#     # end
#     VCR.use_cassette 'model/api_response' do
#       response = Tweet.get_tweets(handle='stackcommerce', max_id=0)
#       response.first.should == &quot;hello world&quot;
#     end
#
#     allow(Tweet).to receive(:get_tweets).and_return(tweets)
#
#     # exercise
#     tweets = Tweet.get_tweets(handle='hootan_nik')
#
#     # verify
#     # This is a pretty bad test case but running out of time... this was a fun exercise
#     expect(tweets.length).to eq 25
#   end
# end