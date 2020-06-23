require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

#burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

#* Surrey (annual_revenue of 224000, carries women's apparel only)
#* Whistler (annual_revenue of 1900000 carries men's apparel only)
#* Yaletown (annual_revenue of 430000 carries men's and women's apparel)

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < ?", 1000000)



@mens_stores.each do |store| 
    puts "Store name: #{store.name}, annual revenue: #{store.annual_revenue}."
end 

@womens_stores.each do |store|
    puts "Store name: #{store.name}, annual revenue: #{store.annual_revenue}."
end 




