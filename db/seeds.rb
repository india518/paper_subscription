# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  Newspaper.create(title: "The Daily Planet", editor_fname: "George",
                   editor_lname: "Taylor")
  SubscriptionPlan.create(newspaper_id: 1, name: "The Clark Kent",
                          daily: "true", price: "1.50")
  SubscriptionPlan.create(newspaper_id: 1, name: "The Lois Lane",
                          daily: "false", price: "5.00")
  
  Newspaper.create(title: "Whatever chronicles", editor_fname: "El",
                   editor_lname: "Duderino")
  SubscriptionPlan.create(newspaper_id: 2, name: "For the Dude", daily: "false",
                          price: "0.99")
end