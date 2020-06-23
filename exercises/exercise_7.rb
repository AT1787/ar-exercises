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
#
#1. Add validations to two models to enforce the following business rules:
#  * Employees must always have a first name present
#  * Employees must always have a last name present
#  * Employees have a hourly_rate that is a number (integer) between 40 and 200
#  * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
#  * Stores must always have a name that is a minimum of 3 characters
#  * Stores have an annual_revenue that is a number (integer) that must be 0 or more
#  * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)
#2. Ask the user for a store name (store it in a variable)
#3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
#4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
#


#1a) First name present

puts @store5.employees.create(last_name: "O'Shae", hourly_rate: 70).valid?

#1b) Last name present

puts @store5.employees.create(first_name: "Johnson", last_name: nil, hourly_rate: 70).valid?

#1c) Employees have a hourly rate that is a) integer b) greater or equal than 40 and c) less or equal than 200

puts @store5.employees.create(first_name: "Johnson", last_name: "Jack", hourly_rate: "a30").valid?

puts @store5.employees.create(first_name: "Johnson", last_name: "Jack", hourly_rate: 201).valid?

#1d) Employees must always have a store that they belong to (can't have an employee that is not assigned a store)

puts @store5.employees.create(store_id: nil, first_name: "Johnson", last_name: "Jack", hourly_rate: 39).valid?

#1e)  Stores must always have a name that is a minimum of 3 characters

test_store = Store.create(name: "JB", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

puts test_store.errors.messages

#1e)  Stores must have int values greater than 0 for annual_revenue

test_store2 = Store.create(name: "JB", annual_revenue: "AB", mens_apparel: false, womens_apparel: true)

puts test_store2.errors.messages

test_store3 = Store.create(name: "JB", annual_revenue: -1, mens_apparel: false, womens_apparel: true)

puts test_store3.errors.messages

#1e)  Stores must have at least one or mens or womens apparel

test_store4 = Store.create(name: "JB", annual_revenue: 224000, mens_apparel: false, womens_apparel: false)

puts test_store4.errors.messages

#2)

puts "Enter a store name:"
store_name = $stdin.gets.chomp

test_store5 = Store.create(name: store_name)

puts test_store5.errors.full_messages




