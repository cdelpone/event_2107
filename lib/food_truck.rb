class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    result = 0
    @inventory.each do |supply|
      supply_key = supply[0]
      supply_qty = supply[1]
      # require "pry"; binding.pry
      if supply_key == item
      result += supply_qty
      else result
      end
    end
    result
  end

  def stock(item, qty)
    @inventory[item] += qty

  end
end
