
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity 
  
  @@items = []
  
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
    @@items << @title
  end 
  
  def apply_discount
    @total -= @total * @discount / 100 
    if @discount > 0 
      return "After the discount, the total comes to $#{total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def items 
    @@items.uniq
  end 
  
end 