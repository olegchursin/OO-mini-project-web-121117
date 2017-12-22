class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # instantiate empty Hash with values set to 0
  # populate this hash with keys = allergen taken from Allergen.all array and increment the values
  # iterate over the resulting hash with .each and return allergen if count == allergent_hash.values.max
  def self.most_common_allergen
    allergen_hash = Hash.new(0)
    Allergen.all.each {|allergen| allergen_hash[allergen.ingredient] +=1 }
    allergen_hash.each {|allergen, count| allergen if count == allergen_hash.values.max }
  end
  
end
