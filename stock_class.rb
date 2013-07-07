class Stock
  attr_accessor :name, :buy_price, :sell_price, :person
  def initialize(name, buy_price, sell_price, person)
    @name = name
    @buy_price = buy_price
    @sell_price = sell_price
    #@person = []
  end

  def to_info
    "The stock #{ name } is buying at #{ buy_price } and selling at #{ sell_price }"
  end
end