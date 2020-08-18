class CoinPrice::Api
  
  
  BASE_URL =  https://api.coinlore.net/api/tickers/ 
    
    
    def self.get_data
        url = BASE_URL
        res = HTTParty.get(url)
        res
        #binding.pry
        #CovidCountry::Country.get_covid_data_api(res["data"]["rows"][1...10])
    end
end