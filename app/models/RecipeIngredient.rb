require 'pry'
class RecipeIngredient
    attr_accessor :recipe, :ingredient
    attr_reader
    attr_writer
    @@all = []
    
    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient
        @@all.push(self)
    end
    
    #should return all of the RecipeIngredient instances
    def self.all
        @@all
    end
    
    #should return the ingredient instance
    def ingredient
        self.ingredient
    end
    
    #should return the recipe instance
    def recipe
        self.recipe
    end
end
