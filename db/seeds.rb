# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
User.delete_all
user = User.create! :name => 'admin1', :email => 'admin@darthsubs.com', :password => 'admin1', :password_confirmation => 'admin1'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'cook12', :email => 'cook@darthsubs.com', :password => 'cook12', :password_confirmation => 'cook12'
puts 'New user created: ' << user2.name
user3 = User.create! :name => 'joe123', :email => 'joe@blow.com', :password => 'joe123', :password_confirmation => 'joe123'
puts 'New user created: ' << user3.name
user.add_role :admin
user2.add_role :cook
user3.add_role :user

puts 'SETTING UP PRODUCTS/SUBS'
Product.delete_all
products = Product.create([
  { name: 'Darth Dark', description: 'Dark bread', size: 6, price: 5.95 },
  { name: 'Vader Veggie', description: 'Sub', size: 6, price: 3.95 },
  { name: 'Vader Veggie Plus', description: 'Sub, double cheese', size: 12, price: 5.95 },
  { name: 'Italiano', description: 'Sub', size: 12, price: 4.95 },
  ])

puts 'SETTING UP INGREDIENTS'
Ingredient.delete_all
ingredients = Ingredient.create([
  { name: 'Cheddar'},
  { name: 'Provolone'},
  { name: 'Lettuce'},
  { name: 'Tomato'},
  { name: 'Onion'},
  { name: 'Pickle'},
  { name: 'Mayo'},
  { name: 'Mustard'},
  { name: 'Banana Peppers'},
  { name: 'Green Peppers'},
  { name: 'Salt'},
  { name: 'Pepper'}
  ])
