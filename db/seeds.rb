require 'json'
require 'open-uri'

Ingredient.delete_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_list = open(url).read
ingredients = JSON.parse(ingredient_list)
ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

puts "complete"
