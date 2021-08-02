class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    total_inv_qty = 0
    @inventory.each do |supply|
      supply_key = supply[0]
      supply_qty = supply[1]
      if supply_key == item
      total_inv_qty += supply_qty
    else total_inv_qty
      end
    end
    total_inv_qty
  end

  def stock(item, qty)
    @inventory[item] += qty
  end

  def potential_revenue
    @inventory.sum do |item, qty|
      item.price * qty
    end
  end
end
