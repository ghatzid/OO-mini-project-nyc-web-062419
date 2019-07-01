require 'pry'
class RecipeCard
    attr_accessor :recipe, :user, :rating, :date
    attr_reader
    attr_writer
    @@all = []
    
    def initialize(recipe, user, date)
        @recipe = recipe
        @user = user
        @rating = 0.0
        @date = date
        @@all.push(self)
    end

    #should return all of the RecipeCard instances
    def self.all
        @@all
    end

    #should return the date of the entry
    def date
        self.date
    end
    
    #should return the rating (an integer) a user has given their entry
    def rating
        self.rating
    end

    #should return the user to which the entry belongs
    def user
        self.user
    end
    
    #should return the recipe to which the entry belongs
    def recipe
        self.recipe
    end
end
