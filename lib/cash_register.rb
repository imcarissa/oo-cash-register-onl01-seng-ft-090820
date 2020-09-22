class CashRegister 
  
  attr_accessor :discount, :total

  def initialize(discount=0)
    @discount = discount 
    @total = 0
    @items = []
    @last_item = [] 
  end 
  
  
  def add_item(title, price, quantity=1)
    @total += price * quantity 
      quantity.times do 
      @items << title 
    end 
    @last_item = price * quantity 
  end 
  
  def items 
    @items 
  end 
  
  
  
  def void_last_transaction 
     @items.delete_at(-1)
    self.total = self.total - @last_item
  end 
end 