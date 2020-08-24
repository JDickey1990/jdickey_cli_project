class CoinPrice::Api
  
 URL =  "https://api.coinlore.net/api/tickers/?start=0&limit=10"
    
    def self.get_data
      uri = URI.parse(URL)
       response = Net::HTTP.get_response(uri)
       response.body
    end
    
    
    def self.coin_data
      coins_data=JSON.parse(self.get_data)
      coins_data.each do |data,coin_hashes|
        coin_hashes.each do |coin_hash|
          coin_hash.each do |attribute,value|
            if attribute == "name"
             @name = value
            elsif attribute == "price_usd"
             @price = value
            CoinPrice::Coin.new(@name, @price)
            end
          end
        end
      end
    end
    
    # def self.coin_price
    #   coins_data=JSON.parse(self.get_data)
    #   coins_data.each do |data,coin_hashes|
    #     coin_hashes.each do |coin_hash|
    #       coin_hash.collect do |attribute,value|
    #         if attribute == "price_usd"
    #           price = attribute
    #           CoinPrice::Price.new(price)
    #       end
    #     end
    #   end
    # end
    
    
    # def self.coin_symbol
    #   coins_data=JSON.parse(self.get_data)
    #   coins_data.each do |data,coin_hashes|
    #     coin_hashes.each do |coin_hash|
    #       coin_hash.collect do |attribute,value|
    #         if attribute == "symbol"
    #           puts value
    #         end
    #       end
    #     end
    #   end
    # end   
end
