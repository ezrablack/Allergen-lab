# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
User.destroy_all
Recipe.destroy_all
Allergen.destroy_all
RecipeIngredient.destroy_all

require 'faker'


20.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end

10.times do
    User.create(name: Faker::Name.name)
end 

10.times do 
    Recipe.create(name: Faker::Food.dish, description: Faker::Food.description, user_id: User.all.sample.id)
end 

10.times do 
    Allergen.create(user_id: User.all.sample.id, ingredient_id: Ingredient.all.sample.id, name: Faker::Lorem.word)
end 

10.times do
    RecipeIngredient.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end