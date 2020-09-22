class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
   end
  end
end
    