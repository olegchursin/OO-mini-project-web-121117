class RecipeIngredient
  attr_accessor :ingredient, :recipe

  @@all = []

  def initialize(recipe, ingredient) #if using a join method as a join tbl remember tp instantiate with those classes
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
