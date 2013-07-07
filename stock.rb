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

  def sell(qty)
    @qty -= qty if qty <= @qty
  end

  def quote
     Stock.quote(@symbol) * @qty
  end

symbol = "yhoo,goog,appl,ko,ebay,jnj,intc,mcd,nke,nwsa"

  def to_s
    "Purchased #{@qty} shares of #{@symbol} worth $#{quote.round}"
  end

  def Stock.quote(symbol)
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end
end


# +require 'yahoofinance'
# +quote_type = YahooFinance::RealTimeQuote
# +quote_symbols = "yhoo,goog,appl,ko,ebay,jnj,intc,mcd,nke,nwsa"
# +
# +
# +YahooFinance::get_quotes( quote_type, quote_symbols ) do |qt|
# +    puts "QUOTING: #{qt.symbol}"
# +    puts qt.to_s
# +end


