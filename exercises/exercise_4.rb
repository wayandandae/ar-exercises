require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Find stores that only sell men's apparels
@mens_stores = Store.where(mens_apparel: true)

# Iterate through each store to print its name and annual revenue
@mens_stores.each do |store|
  puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Use SQL injection prevention placeholders
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)