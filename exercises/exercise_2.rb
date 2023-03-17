require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Find stores by database id
@store1 = Store.find(1)
@store2 = Store.find(2)
# Change store1's name to something
@store1.name = "something"
