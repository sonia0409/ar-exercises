require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
    has_many :employees
end

class Employee
    belongs_to :store 
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Julia", last_name: "Chris", hourly_rate: 50)
@store1.employees.create(first_name: "Christina", last_name: "Virani", hourly_rate: 20)

@store2.employees.create(first_name: "Khushi", last_name: "Jain", hourly_rate: 30)
@store2.employees.create(first_name: "Timmy", last_name: "Chen", hourly_rate: 45)
@store2.employees.create(first_name: "Louis", last_name: "Lee", hourly_rate: 25)
