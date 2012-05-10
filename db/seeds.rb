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
