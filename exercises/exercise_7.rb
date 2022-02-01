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

class Employee
    validates :first_name, :last_name, presence: true
    validates :hourly_rate, numericality: { in: 40..20 }
    validates :store, presence: true 
end

class Store
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
end


puts "enter the store name"
input_store_name = gets.chomp

new_store = Store.create(
    name: input_store_name
)


new_store.errors.each {|error, message|
puts "#{error} #{message}"}


