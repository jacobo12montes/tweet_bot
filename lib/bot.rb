require 'pry'
require 'twitter'

YOUR_CONSUMER_KEY = 'NCufQgn4ZTGhgdL5McveRwsZW'
YOUR_CONSUMER_SECRET = 'ouUMf2L8Z0ZCLQJcm82R3BjcRJno4hbw89HPuLbBom4KhPfNqo'
YOUR_ACCESS_TOKEN = '1296665790154977280-Ck5C5QIauWOMExh9co6Gh30fMhhd7f'
YOUR_ACCESS_SECRET = 'FIZwEQg87OPeIiHx6yDEwDHy8ygIUEZWVSkR7o4FBcgLG'

class Bot
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = YOUR_CONSUMER_KEY
      config.consumer_secret = YOUR_CONSUMER_SECRET
      config.access_token = YOUR_ACCESS_TOKEN
      config.access_token_secret = YOUR_ACCESS_SECRET
    end
  end

  def searcher(query)
    user = {}
    @client.search(query).take(10).each do |tweet|
      if user.key? tweet.user.screen_name
        user[tweet.user.screen_name][0] += 1
        user[tweet.user.screen_name][4] << tweet.full_text
      else
        user[tweet.user.screen_name] = [1,
                                        tweet.user.name,
                                        tweet.user.friends_count,
                                        tweet.user.followers_count,
                                        [tweet.full_text]]
      end
    end

    user = user.sort_by { |_key, value| value }
  end

  def check(friends_count, followers_count)
    if friends_count.zero? || followers_count.zero?
      true
    else
      false
    end
  end
end
