class RecipeCard

  attr_accessor :date, :recipe, :rating, :user

  @@all = []

  def initialize(recipe, date, rating)
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(recipe, date, rating)
    new_recipe_card = Self.new(recipe, date, rating)
    @@all << new_recipe_card
  end

end
