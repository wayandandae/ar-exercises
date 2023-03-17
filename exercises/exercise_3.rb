require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find(3)
# Delete the third store from the database
@store3.destroy

# Check the remaining number of stores
puts "Number of stores: #{Store.count}"