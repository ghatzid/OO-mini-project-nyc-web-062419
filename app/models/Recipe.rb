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
  end

  #should return the user instances who have recipe cards with this recipe
  def users
    userlist = []

    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
      userlist << recipe_card.user
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
    temp_list = []
    allergenlist = []
    RecipeCard.all.select do |recipe_card|
      if recipe_card.recipe == self
        temp_list << recipe_card.user #array containing all users of this recipe
      end
      i = 0
      while i < temp_list.length
        Allergy.all.select do |allergy_instance|
          temp_list[i] == allergy_instance.user
          allergenlist << allergy_instance.ingredient
          i += 1
        end
      end
    end
    #return temp_list

    allergenlist
  end

  #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  def add_ingredients
  end
end
