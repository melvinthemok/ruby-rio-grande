require_relative 'item.rb'

class DigitalItem < Item

  def initialize(name, price, quantity)
    super(name, price)
    @quantity = 1
  end

  def sell(amount)

  end

  def stock(amount)
    
  end
end
