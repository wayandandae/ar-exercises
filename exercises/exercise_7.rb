require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Prompt user to enter a store name
puts "Enter a store name: "
user_store = gets.chomp
# Create new store using the user input
store = Store.new(name: user_store)
# Save the store
store.save

# For each error message created by the store creation
store.errors.full_messages.each do |errormsg|
  # Print error message in each line
  puts errormsg
end
