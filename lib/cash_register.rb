
class CashRegister
  attr_accessor :total, :discount, :price, :quantity 
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 0)
    @price = price
    @quantity = quantity
    
    quantity.times do 
      @items << title
    end 
    
    if quantity > 0
      self.total += price * quantity 
    else
      self.total += price 
    end 
  end 
  
  def apply_discount
    @total -= (@total * @discount.to_f / 100).to_i 
    if @discount > 0 
      return "After the discount, the total comes to $#{total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
end 