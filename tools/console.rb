require "pry"
require_relative "../config/environment.rb"

# User(name)
user1 = User.new("Bob")
user2 = User.new("Tom")
user3 = User.new("Lisa")

#Ingredient(name)
ingredient1 = Ingredient.new("potatoes")
ingredient2 = Ingredient.new("apples")
ingredient3 = Ingredient.new("tomatoes")
ingredient4 = Ingredient.new("pollen")
ingredient5 = Ingredient.new("ragweed")

#Recipe(name)
recipe1 = Recipe.new("Potato Pie")
recipe2 = Recipe.new("Apple Pie")
recipe3 = Recipe.new("Tomato Pie")

#RecipeIngredient1(recipe, ingredient)
recipeingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipeingredient2 = RecipeIngredient.new(recipe2, ingredient2)
recipeingredient3 = RecipeIngredient.new(recipe3, ingredient3)
recipeingredient4 = RecipeIngredient.new(recipe1, ingredient4)
recipeingredient5 = RecipeIngredient.new(recipe2, ingredient5)

# RecipeCard(recipe, user, date)
recipecard1 = RecipeCard.new(recipe1, user1, 9891, 5.0)
recipecard2 = RecipeCard.new(recipe2, user2, 8302, 3.5)
recipecard3 = RecipeCard.new(recipe3, user3, 3242, 2.1)
recipecard4 = RecipeCard.new(recipe3, user1, 3456, 4.6)
recipecard5 = RecipeCard.new(recipe2, user1, 5651, 1.2)
recipecard6 = RecipeCard.new(recipe2, user1, 9991, 1.2)

# Allergy(user, ingredient)
allergy1 = Allergy.new(user1, ingredient4)
allergy2 = Allergy.new(user2, ingredient5)

# RecipeCard.all.map do |card|
#   puts card
# end

##
binding.pry
##
