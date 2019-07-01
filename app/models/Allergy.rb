require 'pry'
class Allergy
    attr_accessor :user, :ingredient
    attr_reader
    attr_writer
    @@all = []
    
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all.push(self)
    end


    # Allergy.all should return all of the Allergy instances
    def self.all
        @@all
    end
end
    # An Allergy is a join between a user and an ingredient. This is a has-many-through relationship. What methods should an instance of this model respond to?