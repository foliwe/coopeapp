# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Continent.destroy_all 
Business.destroy_all
Country.destroy_all

cna = Continent.create!(name: "North America")
csa = Continent.create!(name: "South America")
ceu = Continent.create!(name: "Europe")
caf = Continent.create!(name: "Africa")

puts "4 Continent Created"

ctna= Country.create!(name: "Usa" )
ctsa = Country.create!(name: "Brasil" )
cteu =Country.create!(name: "Germany" )
ctaf = Country.create!(name: "Nigeria" )
puts "4 Countries Created"

bna= Business.create!(name: "Business North America")
bsa = Business.create!(name: "Business South America")
beu =Business.create!(name: "Business Europe")
baf = Business.create!(name: "Business frica")

puts "4 Business Created"


