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
@store1.employees.create(first_name: "Jeremy", last_name: "Shaki", hourly_rate: 100)
@store1.employees.create(first_name: "Emma", last_name: "Cuddy", hourly_rate: 60)

@store2.employees.create(first_name: "Johnson", last_name: "Jack", hourly_rate: 50)
@store2.employees.create(first_name: "Fancy", last_name: "Wen", hourly_rate: 70)

@store5 = Store.find_by(id:5)

@store5.employees.create(first_name: "Andy", last_name: "O'Shae", hourly_rate: 70)
@store5.employees.create(last_name: "Jackson", hourly_rate: 70)
