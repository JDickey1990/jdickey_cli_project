class CoinPrice::Coin
  attr_accessor :name 
  attr_writer :price
  @@all = []
  
 def initialize(name)
    @name=name
    @price = []
    save
  end
  
  def self.all
     CoinPrice::Api.coin_name if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
  
end
  