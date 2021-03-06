# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts 'Open & parse Json...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read

result = JSON.parse(file)
ingredients = result['drinks']
puts 'Creating DB...'

Ingredient.destroy_all
Cocktail.destroy_all

ingredients.each do |ingredient|
 Ingredient.create(name: "#{ingredient['strIngredient1']}")
end

cocktails = [
  {
    name:         'Mojito',

  },
  {
    name:         'Spritz',

  },
  {
    name:         'Gin&Tonic',

  },
  {
    name:         'Passion',

  },
  {
    name:         'Long drinks',

  }
]
Cocktail.create!(cocktails)



puts 'Finished!'
