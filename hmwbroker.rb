require_relative 'client'
# require_relative 'functions'

class Hmwbroker
  attr_accessor :name, :clients

  def initialize(name)
    @name = name
# This will sort expected multiple clients
    @clients = {}
  end

# The method to add a new client from client.class
  def add_client(name, deposit)
    @clients[name] = Client.new(name, deposit) if @clients[name].nil?
  end

# To displayed for list_all_clients display list from main menu
  def client(name)
    @clients[name]
  end
end