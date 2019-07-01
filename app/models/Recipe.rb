require "pry"

class Recipe
  attr_accessor :name
  attr_reader
  attr_writer
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  # Recipe.all should return all of the recipe instances
  def self.all
    @@all
  end

  #should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  def self.most_popular
    Recipe.all.max_by { |recipe| recipe.users.count }
  end

  #should return the user instances who have recipe cards with this recipe
  def users
    userlist = []

    RecipeCard.all.select do |recipe_card|
      if recipe_card.recipe == self
        userlist << recipe_card.user
      end
    end
    userlist
  end

  #should return all of the ingredients in this recipe
  def ingredients
    ingredient_list = []
    RecipeIngredient.all.select do |recipe_ingredient|
      if recipe_ingredient.recipe == self
        ingredient_list << recipe_ingredient.ingredient #array containing all ingredients of this recipe
      end
    end
    ingredient_list
  end

  #should return all of the Ingredients in this recipe that are allergens for Users in our system.
  def allergens
    array1 = self.ingredients.map { |ing| ing.name }
    array2 = Allergy.all.map { |x| x.ingredient.name }
    array1 & array2
  end

  #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  def add_ingredients(ingredient_array)
    i = 0
    while i < ingredient_array.length
      RecipeIngredient.new(self, ingredient_array[i])
      i += 1
    end
  end
end
