# rubocop:disable all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'open-uri'
require 'json'
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "rhum")
Ingredient.create(name: "gin")
Ingredient.create(name: "vodka")
Ingredient.create(name: "ginger")
Ingredient.create(name: "raspberry")
Ingredient.create(name: "mango")

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredientsdb = JSON.parse(open(url).read)
ingredientsdb["drinks"].each do |drink|
 ingredient = Ingredient.new({ name: drink["strIngredient1"] })
 ingredient.save
end

Cocktail.create(name: "London Mule")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Tequila Sunrise")
Cocktail.create(name: "TGV")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Moscow Mule")
# rubocop:enable all
