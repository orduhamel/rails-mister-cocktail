require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

puts 'Destroying the data ...'
Ingredient.destroy_all

puts 'Charging the seeds ...'
cocktail_serialized = open(url).read
cocktail = JSON.parse(cocktail_serialized)

cocktail['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

puts 'Finished!'
