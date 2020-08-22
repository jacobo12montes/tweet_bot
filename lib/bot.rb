require 'twitter'

YOUR_CONSUMER_KEY = 'zsPZtXTUluBbAUjJvyjDtcerO'
YOUR_CONSUMER_SECRET = '4BTtRGfXpW9iib8tE05Cm8mPrN50k56I7yMJdHhkym8zHcZ500'
YOUR_ACCESS_TOKEN = '1296665790154977280-HenELc1Gf5hLju8zC1lUUdVkBQ1OEz'
YOUR_ACCESS_SECRET = 'MmTOOep4WcU446d1C6GsT3OfNN4Cfg1wBhtZU30Fdk63A'



#class Bot
  #def initialize
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = YOUR_CONSUMER_KEY
      config.consumer_secret = YOUR_CONSUMER_SECRET
      config.access_token = YOUR_ACCESS_TOKEN
      config.access_token_secret = YOUR_ACCESS_SECRET
    end
  #end
puts credentials