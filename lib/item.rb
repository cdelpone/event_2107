class Item
  attr_reader :name,
              :str_price

  def initialize(stock)
    @name = stock[:name]
    @str_price = stock[:price]
  end

  def price
    price2 = @str_price.split("$")
    price2[1].to_f
  end
end
