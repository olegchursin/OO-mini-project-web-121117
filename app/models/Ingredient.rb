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

  def self.most_common_allergen
    # user.allergens.uniq.max  -> iterate over users allergens and return the highest occurance
    
  end

end
