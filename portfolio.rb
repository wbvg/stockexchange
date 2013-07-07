# Portfolio needs stock data
require_relative 'stock'

class Portfolio
  attr_accessor :name, :stock

  def initialize(name)
    @name = name
   # Expect empty storage place for stocks
    @stock = {}
  end

  def buy_stock(symbol, qty)
    # def if - stocks is defined as nil first!
    if @stock[symbol].nil?
      @stock[symbol] = Stock.new(symbol, qty)
    else
      #  class Stocks [symbols] * qty (BUY from portfolio class)
      @stock[symbol].buy(qty)
    end
  end

  def sell_stock(symbol, qty)
    @stocks[symbol].sell(qty) if @stocks[symbol]
  end

  def total_stocks
    @stocks.values.map(&:total_stocks).reduce(:+)
  end

  def to_s
    "#{@name} has #{@stocks.count} stocks worth $#{total_stocks.round}"
  end

end