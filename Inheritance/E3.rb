module Uberable
  def can_uber?
    @year > 2008
  end
end

class Vehicle

  @@number_of_vehicles = 0

  def self.gas_mileage(miles, gallons)
    miles / gallons
  end

  def initialize
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "#{@@number_of_vehicles} vehicles created"
  end
end

class MyCar < Vehicle
  include Uberable

  NUMBER_OF_DOORS = 4

  attr_accessor :color
  attr_reader :year

  

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
  end

  def brake(number)
    @current_speed -= number
  end

  def shut_down
    @current_speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "Your car is now painted #{color}"
  end


  def to_s
    "My car is a #{color}, #{year}, #{@model}."
  end

end


class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end

car = MyCar.new(2021, "Honda", "White")
p car.can_uber?