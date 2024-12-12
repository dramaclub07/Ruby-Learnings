class Vehicle  
  def calculate_rent(days)  
    raise NotImplementedError, "calculate_rent must implement this method!"  
  end  
end  

class Car < Vehicle  
  def calculate_rent(days)  
    20 * days  
  end  
end  


class Bike < Vehicle  
  def calculate_rent(days)  
    10 * days  
  end  
end  

 
car = Car.new  
bike = Bike.new  

  
car_rent = car.calculate_rent(5)  
bike_rent = bike.calculate_rent(10)  

  
puts "CAR RENTED FOR 5 days: RENT per day \$20: TOTAL=> $#{car_rent}"  
puts "BIKE RENTED FOR 10 days: RENT per day \$10:TOTAL=> $#{bike_rent}"