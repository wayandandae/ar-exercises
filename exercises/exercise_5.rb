require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total Revenue for All Stores: #{Store.sum(:annual_revenue)}"
puts "Average Revenue for All Stores: #{Store.average(:annual_revenue)}"
# Combine where and size to perform calculation on selected query
puts "Number of Stores with $1M> Revenue: #{Store.where("annual_revenue >= 1000000").size}"