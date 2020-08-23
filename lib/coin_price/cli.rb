class CoinPrice::Cli
  def call
    puts "\n Welcome to the coin price cli! \n"
    get_coins
    list_coins
    get_user_coin
  
    #list prices
  end
  
   def get_coins
     #to be pulled from api instead
     CoinPrice::Price.new("1")
     CoinPrice::Price.new("2")
     @price = CoinPrice::Price.all
    # CoinPrice::Api.get_data
    # CoinPrice::Api.coin_name
     @coins = CoinPrice::Coin.all
    end
    
    def list_coins
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
     puts "Here is the price of #{coin.name} in usd"
      # puts "$#{coin.name.price} in usd"
    end

    
end  