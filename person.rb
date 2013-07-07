class Person
  attr_accessor :name, :age, :gender, :account
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @account = account
    @portfolios = []
  end
end
