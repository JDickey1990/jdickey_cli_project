class CoinPrice::Cli
  def call
    puts "\n Welcome to the coin price cli! \n"
    get_coins
    list_coins
    get_user_coin
    get_coins
  end
  
   def get_coins
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
     puts "\nHere are the price details of #{coin.name}.\n"
     price_usd = coin.price_usd
     price_btc = coin.price_btc
     puts "\n1 #{coin.name} coin is worth 
     $#{price_usd} usd
     #{price_btc} bitcoin\n"
     list_choices
     get_user_choice
    end


    def list_choices
      @choices =["Return to main menu","exit"]
      puts "\nEnter in 1 to return to the main menu and 2 to exit.\n"
      @choices.each.with_index(1) { |choice, index|
      puts  "#{index}. #{choice}"
      }
    end
    
    def get_user_choice
      choice = gets.strip.to_i
      if valid(choice, @choices) && choice == 1
        call
      elsif  valid(choice, @choices) && choice == 2
       exit!
      else
        puts "Invalid input please select from the numbers listed"
        get_user_choice
      end
    end
  
  
    
end  