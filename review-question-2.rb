# Finish the implementation of the Car class so it has the functionality described below
require 'pry'

# class Car
#   attr_reader :make, :model, :object__id
#
#   @@all = []
#
#   def initialize(make, model)
#     @make = make
#     @model = model
#     @@all << self.object_id
#   end
#
#   def self.drive
#     "VROOOOOOOOOOOOM!"
#   end
#
#   def self.all
#     @@all
#   end
#
# end

#Test data

# volvo_lightning = Car.new("Volvo", "Lightning")
# yugo = Car.new("Zastava", "Yugo")
# lada = Car.new("AvtoVAZ", "Lada")

# volvo_lightning.make
# #=> "Volvo"
# volvo_lightning.model
# #=> "Lightning"
#
# car.drive
# # => "VROOOOOOOOOOOOM!"
#
# Car.all
# #=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]
#
# BONUS:

class Car
  attr_reader :hash, :val1, :val2

  def initialize(hash)
    counter = 0
    hash.each do |key1, val1|
      if counter == 0
        @val1 = val1
        counter += 1
      else
        @val2 = val1
      end
    end
  end

  def make
    @val1
  end

  def model
    @val2
  end
end


volvo_lightning = Car.new(make: "Volvo", model: "Lightning")
binding.pry
#
# volvo_lightning.make
# #=> "Volvo"
# volvo_lightning.model
# #=> "Lightning"
