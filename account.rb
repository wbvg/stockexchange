class Account
  attr_accessor :name, :balance, :portfolios
  def initialize (name, balance)
    @name = name
    @balance = balance
    @portfolios = {}
  end

  def add_to_portfolio(name, stock)
    @portfolios[name] = [] unless @portfolios[name]
    @portfolios[name].push stock
  end



  # def create_account(name, deposit)
  #   @account.(name) == deposit
  # end

  # def balance(name)
  #   @account.(name)
  # end
end

