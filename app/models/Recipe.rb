require 'pry'
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
        # RecipeCard.all.map do |key|
        #     key.map do |key, val|
        #         puts key
        #         puts val
        #     end
        # end
    end

    #should return the user instances who have recipe cards with this recipe
    def users


        
# userlist = []

#         RecipeCard.all.select do |recipe_card|
#             recipe_card.name == self
#             userlist << recipe_card
#         end
    end

    #should return all of the ingredients in this recipe
    def ingredients
    end
    
    #hould return all of the Ingredients in this recipe that are allergens for Users in our system.
    def allergens
    end
    
    #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    def add_ingredients
    end
end
