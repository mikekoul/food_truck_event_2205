class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map { |food_truck| food_truck.name }
  end

  def food_trucks_that_sell(item)
    has_item = []
    @food_trucks.each do |food_truck|
      if food_truck.inventory != item
        has_item << item
      end
    end
    has_item
  end


end
