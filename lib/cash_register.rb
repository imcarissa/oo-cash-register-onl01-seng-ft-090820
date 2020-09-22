class CashRegister
  
  attr_accessor
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_items
