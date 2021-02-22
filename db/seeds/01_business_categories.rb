require 'faker'


20.times do 
    Category.create!(name: Faker::Company.industry)
end