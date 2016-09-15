# Challenge : 
# Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. 
# Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. 
# Create instance methods that allow the car to speed up, brake, and shut the car off.

# Solution : 
class MyCar

  attr_accessor :year, :model, :color, :speed

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0.0
  end

  def car_info
    "Car model is : #{model}. Car color is #{color}. Car model year is #{year} "
  end

  def init_speed
    "your initial speed is #{speed}"
  end

  def speed_up(num)
    @speed += num
  end

  def current_speed
    "your current speed is #{speed}"
  end

  def slow_down(num)
    @speed -= num
  end
end

car = MyCar.new(1990,'Toyota', 'Red')
puts car.car_info
puts car.init_speed
car.speed_up(50)
puts car.current_speed
car.slow_down(10)
puts car.current_speed