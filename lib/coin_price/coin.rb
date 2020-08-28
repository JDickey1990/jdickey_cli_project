class CoinPrice::Coin
  attr_accessor :name, :price_usd, :price_btc, :symbol
  @@all = []
  
 def initialize(name,price_usd, price_btc, symbol)
    @name=name
    @price_usd = price_usd
    @price_btc = price_btc
    @symbol = symbol
    save
  end
  
  def self.all
     CoinPrice::Api.coin_data if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
  # def self.find_price(name)
  # coin = @@all.detect{|coin| coin.name == name}
  # coin.price
  # end

end
  