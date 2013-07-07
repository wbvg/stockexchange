require 'yahoofinance'

class Stock
  attr_accessor :symbol, :qty

  def initialize(symbol, qty)
    @symbol = symbol
    @qty = qty
  end

  def buy(qty)
    @qty += qty
  end

  def sell(shares)
    @qty -= qty if qty <= @qty
  end

  def quote
     Stock.quote(@symbol) * @qty
  end

  def to_s
    "Purchased #{@qty} shares of #{@symbol} worth $#{quote.round}"
  end

  def Stock.quote(symbol)
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end
end