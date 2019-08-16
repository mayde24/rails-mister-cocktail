# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

20.times do
  url = 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiP6fG6iIfkAhUDJhoKHfzyBRIQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.cuisineaz.com%2Frecettes%2Fcocktail-de-champagne-53419.aspx&psig=AOvVaw12BfPy_ob9meAPn9gLd8RT&ust=1566033732760921'
  cock = Cocktail.new(name: Faker::Commerce.unique.product_name, description: Faker::Lorem.sentence, alcohol: rand(0..1), photo: url)
  rand(3..8).times do
    ingre = Ingredient.new(name: Faker::Food.unique.ingredient)
    dos = Dose.new(description: "5cl", cocktail: cock, ingredient: ingre)
    ingre.save
    dos.save
  end
  cock.save
end
