require_relative '../lib/bot.rb'

bot = Bot.new

loop do
  system 'clear'
  puts "\n"
  puts "                            WELLCOME TO FINDING BOT \n
  |||||||||It will help you to find tweets base on your key word|||||||||\n
  To start using it type your key word/words or the user name of your choice"
  user = bot.searcher(gets.chomp)
  user.each { |key, value| puts "USER ID = #{key} \n\n LOCATION = #{value[0]} \n\n TWEET = #{value[4]} \n\n" }
  user.each { |key, value| p "\n Posible bot #{key} = #{value[5]}" if bot.check(value[2], value[3]) }
  puts 'Would you like to check the information of a user?? (y|n)'
  resp = gets.chomp
  if resp.eql?('y') || resp.eql?('Y')
    puts 'Enter the user id'
    resp = gets.chomp
    user.each do |key, value|
      next unless key.eql?(resp)

      puts "\n User information
              \nID  => #{key}
      Name => #{value[1]}
      tweet(s)  => #{value[5]}
      following => #{value[2]}
      followers => #{value[3]}"
      value[4].each do |t|
        puts "\n =>Tweeters text => #{t}"
      end
    end
  end
  puts 'Would like to exit? (y|n)'
  resp = gets.chomp
  break if resp.eql?('y') || resp.eql?('Y')
end
