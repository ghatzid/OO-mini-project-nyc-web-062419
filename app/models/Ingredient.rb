require "pry"

class Ingredient
  attr_accessor :name
  attr_reader
  attr_writer
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  #should return all of the ingredient instances
  def self.all
    @@all
  end

  #should return the ingredient instance that the highest number of users are allergic to
  def self.most_common_allergen
    Allergy.all.max_by { |allergy| allergy.ingredient.count }
  end
end
