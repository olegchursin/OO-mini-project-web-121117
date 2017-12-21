class Allergen

  attr_accessor :user, :ingredient

  @@all = []

  def initialize(allergen_name)
    @allergen_name = allergen_name
    @@all << self
  end

  def self.all # works!
    @@all
  end

end
