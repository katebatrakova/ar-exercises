require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Vova", last_name: "Ravco", hourly_rate: 50)
@store1.employees.create(first_name: "Dilan", last_name: "Polnocki", hourly_rate: 40)
@store1.employees.create(first_name: "Kate", last_name: "B.", hourly_rate: 30)
@store1.employees.create(first_name: "Nancy", last_name: "Smark", hourly_rate: 20)
@store1.employees.create(first_name: "Rich", last_name: "Richs", hourly_rate: 40)
@store1.employees.create(first_name: "Wendi", last_name: "Sardy", hourly_rate: 30)

@store2.employees.create(first_name: "Dil", last_name: "Renderson", hourly_rate: 60)
@store2.employees.create(first_name: "Moni", last_name: "Douglas", hourly_rate: 50)
@store2.employees.create(first_name: "Sarah", last_name: "So", hourly_rate: 45)
@store2.employees.create(first_name: "Sarah", last_name: "So", hourly_rate: 45)
