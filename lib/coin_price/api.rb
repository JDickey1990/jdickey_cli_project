
 require 'open-uri'
 require 'json'
require 'net/http'

class CoinPrice::Api
  
 URL =  "https://api.coinlore.net/api/tickers/"
    
    def self.get_data
      uri = URI.parse(URL)
       response = Net::HTTP.get_response(uri)
       response.body
       #binding.pry
    end
end

# website = CoinPriceApi.new.get_data
# puts website
 
# class GetPrograms
 
#   URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"
 
#   def get_programs
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
 
# end
 
# programs = GetPrograms.new.get_programs
# puts programs
#