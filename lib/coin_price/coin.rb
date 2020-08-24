class CoinPrice::Coin
  attr_accessor :name, :price
  @@all = []
  
 def initialize(name,price)
    @name=name
    @price = price
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
  