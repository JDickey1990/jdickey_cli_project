
 require 'open-uri'
 require 'json'
require 'net/http'
require 'pry'

class CoinPrice::Api
  
 URL =  "https://api.coinlore.net/api/tickers/"
    
    def self.get_data
      uri = URI.parse(URL)
       response = Net::HTTP.get_response(uri)
       response.body
       #binding.pry
    end
    
    
    def self.coin_name
      coins_data=JSON.parse(self.get_data)
      coins_data.each do |data,coin_hashes|
        coin_hashes.each do |coin_hash|
          coin_hash.collect do |attribute,value|
          if attribute == "name"
            # binding.pry
            puts value
            end
          end
        end
      end
    end
       
end

# def program_school
# # we use the JSON library to parse the API response into nicely formatted JSON
#   programs = JSON.parse(self.get_programs)
#   programs.collect do |program|
#     program["agency"]  
#   end
# end
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