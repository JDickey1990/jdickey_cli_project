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
     CoinPrice::Api.get_data
     CoinPrice::Api.coin_name
     @coins = CoinPrice::Coin.all
    end
    
    def list_coins
      #list coins
      puts "\nChoose the number of a Coin to see it's price.\n"
      @coins.each.with_index(1) { |coin, index|
      puts  "#{index}. #{coin.name}"
      }
    end
    
    def get_user_coin
      chosen_coin = gets.strip.to_i
     if valid(chosen_coin, @coins)
        show_prices_for(chosen_coin)
      else
       puts "Invalid input please select from the numbers listed"
       get_user_coin
     end
    end
    
    def valid(input,data)
      input.to_i <= data.length && input.to_i > 0
    end
    
   def show_prices_for(chosen_coin)
     coin = @coins[chosen_coin -1]
    puts "Here is the price of #{coin} in usd"
      CoinPrice::Api.coin_price
   end
    
end  