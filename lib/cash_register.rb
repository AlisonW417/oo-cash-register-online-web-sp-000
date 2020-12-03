
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end 
  
  def add_item(title, price, quantity = 0)
    @title = title
    @price = price
    @quantity = quantity
    
    if quantity > 0
      self.total += price * quantity 
    else
      self.total += price 
    end 
  end 
  
  def apply_discount
    @total -= @total * @discount / 100 
    
  end 
  
end 