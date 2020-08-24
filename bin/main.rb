require_relative '../lib/bot.rb'

bot = Bot.new

loop do
  system 'clear'
  puts "\n"
  puts "\n"
  puts "                            WELLCOME TO FINDING BOT \n
  |||||||||It will help you to find tweets base on your key word|||||||||\n 
  To start using it type your key word/words or the user name of your choice" 
  user = bot.searcher(gets.chomp)
  user.each { |key, value| puts "USER ID = #{key} \n\n LOCATION = #{value[0]} \n\n TWEET = #{value[4]} \n\n" }
  user.each { |key, value| p "Posible bots \n\n #{key} = #{value[5]}" if bot.check(value[2], value[3]) }
  puts "Would you like to check the information of a user?? (y|n)"
  resp = gets.chomp
  if resp.eql?('y') || resp.eql?('Y')
    puts 'Enter the user id'
    resp = gets.chomp
    user.each do |key, value|
      if key.eql?(resp)
        puts "\n User information
        \nID  => #{key}
Name => #{value[1]}
tweet(s)  => #{value[5]}
following => #{value[2]}
followers => #{value[3]}"
        puts "=>Tweeters text"
        for t in value[4]
          puts "\n =>Tweeters text => #{t}"
        end  
      end
    end
  end
  puts 'Would like to exit? (y|n)'
        resp = gets.chomp
        break if resp.eql?('y') || resp.eql?('Y')
end





# 2.times {
#   bot.hunt_earthquakes
#   puts 'tweet published'
#   sleep(10)
# }


# loop do
#   system 'cls'

#   puts "\n* * * * * * * * * * * * *  * * * * *"
#   puts "* * *       Bot Identifier     * * *"
#   puts "* * * * * * * * * * * * *  * * * * *\n\n"
#   puts 'User ID                # of tweets'
#   user.each { |key, value| puts "#{key} = #{value[0]}" }

#   puts "\n* * *   posible bots   * * *\n"
#   user.each { |key, value| p "#{key} = #{value[0]}" if bot.check(value[2], value[3]) }

#   puts "\nWould you like to check the information of a user?? (y|n)"
#   resp = gets.chomp

#   case resp
#   when 'y' || 'Y'
#     puts "\nEnter the user id"
#     resp = gets.chomp

#     user.each do |key, value|
#       if key.eql?(resp)

#         puts "\n* * * * * * * * * * * * * * * * * * * *"
#         puts "\nUser information\n\n"
#         puts "ID  => #{key}"
#         puts "Name => #{value[1]}"
#         puts "tweet(s)  => #{value[0]} "
#         puts "following => #{value[2]} "
#         puts "followers => #{value[3]} "
#         puts '=>Full text'
#         for t in value[4]
#           puts "=> #{t}"
#         end
#       end
#     end
#   end

#   puts 'Would like to exit? (y|n)'
#   resp = gets.chomp

#   break if resp.eql?('y')
# end
