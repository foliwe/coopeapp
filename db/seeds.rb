# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Continent.destroy_all 
Business.destroy_all

na = Continent.create(name: "North America")
sa = Continent.create(name: "South America")
eu = Continent.create(name: "Europe")
af = Continent.create(name: "Africa")

puts "4 Continent Created"

bna= Business.create(name: "Business North America")
bsa = Business.create(name: "Business South America")
beu =Business.create(name: "Business Europe")
baf = Business.create(name: "Business frica")

puts "4 Business Created"

bna.continent_ids << na.id

puts "1 associated Created"