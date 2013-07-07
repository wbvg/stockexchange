require_relative 'hmwbroker'
# hmwbroker = Hmwbroker.new_client('Willy',1000)

def menu
  puts '====== HMW - Brokers ======='
  puts '====== Main Menu ==========='
  puts "Please select from the following:"
  puts '1=== Create a New client'
  puts '2=== Create a portfolio'
  puts '3=== Purchase Stocks'
  puts '4=== Sell Stocks'
  puts '5=== List all clients and balances'
  puts "6=== List a client's portfolios and totals"
  puts "7=== List all portfolio stocks and totals"
  puts 'q === Quit the program'
  gets.chomp.capitalize
end

# STEP 1 - Create a client
def new_client
  print 'Enter New Client Name: '
  client = gets.chomp
  deposit = 1_000.to_f
  puts "Congratulations you receive $1000!"
Hmwbroker.add_client(client, deposit)
end




# STEP 2 - Create a Portfolio and attach to the new client
def new_portfolio
  print 'Name:'
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  Hmwbroker.client(client).new_portfolio(portfolio)
  if @new_portfolio[name].nil?
  puts "You need to create a Client first."
  end
end

def buy_stocks
  print 'Client: '
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  print 'Symbol: '
  symbol = gets.chomp.upcase
  print 'Buy # shares: '
  shares = gets.to_i
  Hmwbroker.client(client).add_stock_to_portfolio(portfolio, symbol, qty)
end


def sell_stocks
  print 'Client: '
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  print 'Symbol: '
  symbol = gets.chomp.upcase
  print 'Sell # shares: '
  qty = gets.to_i
  Hmwbroker.client(client).sell_stock_in_portfolio(portfolio, symbol, qty)
end

def list_all_clients
  puts $hmwbroker.clients.values.join("\n")
  gets
end

def list_all_portfolios
  print 'Client: '
  client = gets.chomp
  puts Hmwbroker.client(client).portfolios.values.join("\n")
  gets
end

def list_all_stocks
  print 'Client: '
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  puts Hmwbroker.client(client).portfolios[portfolio].stocks.values.join("\n")
  gets
end




