# Story:	As a programmer, I can make a vehicle. Hint:	Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
    def my_vehicle(vehicle)
        @vehicle = vehicle
    end
end

# Story:	As a programmer, I can make a car. Hint:	Create a class called Car, and create a variable called my_car which contains an object of class Car.

# class Car
#     def my_car(car)
#         @car = car
#     end
# end

# Story:	As a programmer, I can tell how many wheels a car has; default is four. Hint:	initialize the car to have four wheels, then create a method to return the number of wheels.

class Car
    def initialize year
        @year = year
        @wheels = 4
        @lights = false
        @signals = 'off'
        @speed = 0
    end
    def get_wheels
        p @wheels
    end
    def light_status
         @lights
    end
    def lights_on_off
        @lights == false ? @lights = true: @lights = false
    end
    def signal_left
        @signals = 'left'
    end
    def signal_right
        @signals = 'right'
    end
    def get_speed
        @speed
    end
    def get_info
        "This #{@car} is from #{@year}. It has #{@wheels} wheels. The lights are #{@lights}. The speed is #{@speed}. The turn signal is #{@signals}. It speeds up by #{@acceleration}, and it brakes by #{@braking}"
    end
end

# Story:	As a programmer, I can make a Tesla car. Hint:	Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
    def initialize (car,year)
        super(year)
        @car = car
        @year = year
        @acceleration = 10
        @braking = 7
    end
    def display
        "#{@car} is from #{@year}. Lights are #{@lights}"
    end
    def accelerate
        @speed = @speed + @acceleration
    end
    def brake
        @speed = @speed - @braking
    end
end
# is the actual car
model_x = Tesla.new('tesla', 2020)
model_s = Tesla.new('tesla', 2019)
my_teslas = [model_x,model_s]

p my_teslas2 = my_teslas.sort_by { |a| [ a.year] }

my_tesla = Tesla.new('tesla',2018)
p my_tesla.display
p my_tesla.lights_on_off

p my_tesla.get_speed
my_tesla.accelerate
p my_tesla.get_speed
my_tesla.accelerate
p my_tesla.get_speed
my_tesla.brake
p my_tesla.get_info
p model_x.get_info
# Story:	As a programmer, I can make a Honda car.

class Honda < Car
    def initialize (car,year)
        super(year)
        @car = car
        @year = year
        @acceleration = 2
        @braking = 1.25
    end
    def accelerate
        @speed = @speed + @acceleration
    end
    def brake
        @speed = @speed - @braking
    end
end

my_honda = Honda.new('Honda',2010)
p my_honda.get_speed
 my_honda.accelerate
p my_honda.get_speed
 my_honda.accelerate
p my_honda.get_speed
 my_honda.brake
p my_honda.get_speed
# Story:	As a programmer, I can make a Toyota car.

class Toyota < Car
    def initialize (car,year)
        super(year)
        @car = car
        @year = year
        @acceleration = 7
        @braking = 5
    end
        def accelerate
            @speed = @speed + @acceleration
        end
        def brake
            @speed = @speed - @braking
        end
end

my_toyota = Toyota.new('Toyota',2009)

    p my_toyota.get_speed
     my_toyota.accelerate
    p my_toyota.get_speed
     my_toyota.accelerate
    p my_toyota.get_speed
     my_toyota.brake
    p my_toyota.get_speed


# Story:	As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint:	Make model year part of the initialization.

# Done

# Story:	As a programmer, I can turn on and off the lights on a given Vehicle. Hint:	Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

# Done

# Story:	As a programmer, I can determine if the lights are on or off. Lights start in the off position.
#Done
# You should be able to test the car now:
# vehicle = Vehicle.new(...)
# vehicle.lights_on # should return false because they start false
p my_toyota.light_status
# vehicle.lights_on = true # this should change the lights to true
# vehicle.lights_on # should now return true
# vehicle.lights_on = false # this should change the lights to false
# vehicle.lights_on? # should return false
# Story: As a programmer, I can signal left and right. Turn signals starts off.
#Done

# Story:	As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
# Story:	As a programmer, I can speed my Teslas up by 10 per acceleration.
#
# Story:	As a programmer, I can slow my Teslas down by 7 per braking.
#Done

# Story:	As a programmer, I can speed my Hondas up by 2 per acceleration.
#
# Story:	As a programmer, I can slow my Hondas down by 1.25 per braking.
#
# Story:	As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story:	As a programmer, I can slow my Toyotas down by 5 per braking.
#Done






# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.


# DONE


# Story:	As a programmer, I can keep a collection of two of each kind of vehicle, all from different years. Hint:	Create two of each vehicles, all from different model years, and put them into an Array.
#Done



# Story:	As a programmer, I can sort my collection of cars based on model year.
#
# Story:	As a programmer, I can sort my collection of cars based on model. Hint:	Sort based on class name.
#
# Story:	As a programmer, I can sort my collection of cars based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
