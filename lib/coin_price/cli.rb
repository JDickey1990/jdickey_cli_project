class CoinPrice::Cli
  def call
    puts "\n Welcome to the coin price cli! \n"
    get_coins
    list_coins
    get_user_coin
    get_coins
  end
  
   def get_coins
     @price = CoinPrice::Price.all
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
     puts "\nHere is the price of #{coin.name}.\n"
     price = coin.price
     puts "\n$#{price} in usd\n"
     puts "\nSelect another coin or enter exit to leave program\n"
    end

    
end  