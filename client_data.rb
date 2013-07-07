require_relative 'hmwbroker'
# require_relative 'functions'

def add_client( name, deposit)
end


$hmwbroker = Hmwbroker.new('William')
$hmwbroker.add_client('Hui', 1_000)
$hmwbroker.add_client('Mike', 1_000)
$hmwbroker.add_client('Will', 1_000)

$hmwbroker.client('Hui').new_portfolio('Tech')
$hmwbroker.client('Hui').new_portfolio('Energy')
$hmwbroker.client('Hui').new_portfolio('Fashion')
$hmwbroker.client('Mike').new_portfolio('Finance')
$hmwbroker.client('Mike').new_portfolio('Medical')
$hmwbroker.client('Will').new_portfolio('Retail')

$hmwbroker.client('Hui').add_stock_to_portfolio('Tech', 'AAPL', 10)
$hmwbroker.client('Hui').add_stock_to_portfolio('Tech', 'GOOG', 5)
$hmwbroker.client('Hui').add_stock_to_portfolio('Tech', 'AMZN', 3)
$hmwbroker.client('Hui').add_stock_to_portfolio('Tech', 'MSFT', 18)
$hmwbroker.client('Hui').add_stock_to_portfolio('Energy', 'GE', 10)
$hmwbroker.client('Hui').add_stock_to_portfolio('Energy', 'FLWS', 7)
$hmwbroker.client('Hui').add_stock_to_portfolio('Fashion', 'FCCY', 9)
$hmwbroker.client('Mike').add_stock_to_portfolio('Finance', 'VNET', 12)
$hmwbroker.client('Mike').add_stock_to_portfolio('Medical', 'JOBS', 11)
$hmwbroker.client('Will').add_stock_to_portfolio('Retail', 'EGHT', 4)
$hmwbroker.client('Will').add_stock_to_portfolio('Retail', 'AAON', 8)