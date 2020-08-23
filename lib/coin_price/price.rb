class CoinPrice::Price
  attr_accessor :amount, :coin
  @@all = []
  
 def initialize(price)
    @amount = amount
    @coin = coin
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
    
 
end