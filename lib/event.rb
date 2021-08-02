class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |truck|
      truck.inventory.keys.include?(item)
    end
  end

  def total_inventory
    total_inv = Hash.new(0)
    ft_qty = Hash.new(0)
    accum = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item, qty|
        item_qty = truck.check_stock(item)
        ft_qty[:quantity] = item_qty
        ft_qty[:food_trucks] = (accum << truck)
        total_inv[item] = ft_qty.uniq
      end
      end
      total_inv
      end
  end

# total_inventory that reports the quantities of all items sold at the event.
# items as keys and
# hash as values - this sub-hash should have two key/value pairs: quantity pointing to total inventory for that item and food_trucks pointing to an array of the food trucks that sell that item.
