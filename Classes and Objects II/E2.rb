class MyCar

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

  def self.gas_mileage(miles, gallon)
    miles / gallons
  end 

  def to_s
    "My car is a #{color}, #{year}, #{@model}."
  end

end