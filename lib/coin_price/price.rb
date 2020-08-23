class CoinPrice::Price
  attr_accessor :price, :coin
  @@all = []
  
 def initialize(price)
    @price = price
    @coins = coin
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  # def add_to_coin
  #   @coins.price << self
  # end
end