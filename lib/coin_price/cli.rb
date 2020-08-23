class CoinPrice::Cli
  def call
    puts "\nWelcome to the coin price cli!\n"
    get_coins
    list_coins
    get_user_coin
    #get_prices_for(coin)
    #list prices
  end
  
   def get_coins
     #to be pulled from api instead
     @coins = ["Bitcoin", "Ethereum", "Ripple"]
    end
    
    def list_coins
      #list coins
      puts "\nChoose the number of a Coin to see it's prices.\n"
      @coins.each.with_index { |coin, index|
      puts  "#{index + 1}. #{coin}"
      }
    end
    
    def get_user_coin
      chosen_coin = gets.strip.to_i
       show_prices_for(chosen_coin) if valid(chosen_coin, @coins)
       
    end
    
    def valid(input,data)
      input.to_i <= data.length && input.to_i > 0
    end
    
   def show_prices_for(chosen_coin)
     coin = @coins[chosen_coin -1]
    puts "Prices for #{coin}"
   end
    
end  