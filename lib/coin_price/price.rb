class CoinPrice::Price
  attr_accessor :name
  @@all = []
  
 def initialize(price)
    @price=price
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end