# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  cock = Cocktail.new(name: Faker::Commerce.unique.product_name, description: Faker::Lorem.sentence, alcohol: rand(0..1))
  rand(3..8).times do
    ingre = Ingredient.new(name: Faker::Food.unique.ingredient)
    dos = Dose.new(description: "5cl", cocktail: cock, ingredient: ingre)
    ingre.save
    dos.save
  end
  cock.save
end
