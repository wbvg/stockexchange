require_relative 'portfolio'


class Client
  attr_accessor :name, :portfolios

  def initialize(name, deposit)
    @name = name
    @balance = deposit
    @portfolios = {}
  end

  def balance
    @balance
  end

  def deposit(funds)
    @balance += funds
  end

  def withdraw(funds)
    @balance -= funds if funds <= @balance
  end

  def can_purchase_stock?(amount)
    amount <= @balance
  end

  def new_portfolio(name)
    portfolios[name] = Portfolio.new(name) if portfolios[name].nil?
  end

  def position
    @balance + portfolio_total
  end

  def portfolio_total
    @portfolios.values.map(&:position).compact.reduce(:+) || 0
  end

  def sell_stock_in_portfolio(name, symbol, qty)
    if portfolios[name] && portfolios[name].stocks[symbol] && qty <= portfolios[name].stocks[symbol].qty
      amount = Stock.quote(symbol) * qty
      deposit(amount)
      portfolios[name].sell_stock(symbol, qty)
    end
  end

  def add_stock_to_portfolio(name, symbol, qty)
    amount = Stock.quote(symbol) * qty
    if portfolios[name] && can_purchase_stock?(amount)
      portfolios[name].buy_stock(symbol, qty)
      withdraw(amount)
    end
  end

  def to_s
    "#{@name} has #{@portfolios.count} portfolios worth $#{portfolio_total.round} and $#{@balance.round} in cash for a total of $#{position.round}"
  end
end