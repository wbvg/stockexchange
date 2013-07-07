require 'pry'
require 'pry-debugger'
require_relative 'client_data'
require_relative 'functions'

# add_client = nil

hmwbroker = nil
hmwbroker = Hmwbroker.new("Willy Butt")


response = menu
while response != 'q'
  case response
  when '1' then new_client
  when '2' then new_portfolio
  when '3' then buy_stocks
  when '4' then sell_stocks
  when '5' then list_all_clients
  when '6' then list_all_portfolios
  when '7' then list_all_stocks
  end
end