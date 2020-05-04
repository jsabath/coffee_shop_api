# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Coffee.destroy_all
CoffeeShop.destroy_all
Customer.destroy_all

starbucks = CoffeeShop.create(name: "Starbucks", location: "Edgewater", capacity: 200)
dunkin = CoffeeShop.create(name: "Dunkin Donuts", location: "Denver", capacity: 300)

justin = Customer.create(name: "Justin", status: 5)
katie = Customer.create(name: "Katie", status: 5)
bill = Customer.create(name: "Bill", status: 3)

latte = Coffee.create(name: "Latte", roast_type: "medium", strength: "Light", coffee_shop: starbucks, customer: justin)
mocha = Coffee.create(name: "Mocha", roast_type: "dark", strength: "strong", coffee_shop: dunkin, customer: katie)
tea = Coffee.create(name: "Latte", roast_type: "dark", strength: "medium", coffee_shop: starbucks, customer: bill)
