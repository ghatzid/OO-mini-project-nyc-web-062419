require 'pry'
class User
    attr_accessor :name
    attr_reader
    attr_writer
    @@all = []
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    # User.all should return all of the user instances
    def self.all
        @@all
    end
    
    #should return all of the recipes this user has recipe cards for
    def recipes
    end
    
    #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    def add_recipe_card
    end

    #should accept anIngredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient
    def declare_allergy
    end
    
    #should return all of the ingredients this user is allergic to
    def allergens
    end

    #should return the top three highest rated recipes for this user.
    def top_three_recipes
    end
    
    # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe
    end

    #BONUS
    # s afe_recipes should return all recipes that do not contain ingredients the user is allergic to

end
