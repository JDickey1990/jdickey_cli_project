class CoinPrice::Api
  
 URL =  "https://api.coinlore.net/api/tickers/?start=0&limit=10"
    
    def self.get_data
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end
    
    def self.coin_data
	   coins_data=JSON.parse(self.get_data)
	    coins_data["data"].each do |coin|
	      name = coin["name"]
	      price_usd = coin["price_usd"]
	      price_btc = coin["price_btc"]
	      symbol = coin["symbol"]
	      if 
	       name != nil && price_usd != nil && price_btc != nil && symbol != nil
	       CoinPrice::Coin.new(name, price_usd, price_btc, symbol)
	      end
	    end
    end
   
end
