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
      puts "\nChoose a Coin to see prices.\n"
      @coins.each.with_index { |coin, index|
      puts  "#{index + 1}. #{coin}"
      }
    end
    
    def get_user_coin
      chosen_coin = gets.strip
      
    end
    
end  