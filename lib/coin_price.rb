require_relative  "../lib/coin_price/version"
require_relative  "../lib/coin_price/cli"
require_relative "../lib/coin_price/api"
require_relative "../lib/coin_price/coin"
require_relative "../lib/coin_price/price"

require 'open-uri'
require 'json'
require 'net/http'
require 'pry'

module CoinPrice
  class Error < StandardError; end
  # Your code goes here...
end
