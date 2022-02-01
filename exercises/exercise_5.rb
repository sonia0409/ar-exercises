require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
#print the total revenue for the entire company (all stores)
total_revenue = Store.sum(:annual_revenue)
puts "total revenue for the entire company (all stores) #{total_revenue}"

#print the average annual revenue for all stores.
number_of_stores = Store.count
puts "average annual revenue = #{total_revenue/number_of_stores}"
#print the number of stores that are generating $1M or more in annual sales
store = Store.where("annual_revenue > ?", 1000000)
puts "number of stores that are generating $1M or more in annual sales = #{store.count}"