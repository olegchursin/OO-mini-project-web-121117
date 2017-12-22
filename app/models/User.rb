class User

  attr_accessor :name, :allergens

  @@all = []

  def initialize(name)
    @name = name
    @recipes = []
    @@all << self
  end

  def self.all
    @@all
  end

  # iterate over RecipeCard.all array and return instance.recipe if instance.user == self
  def recipes
    RecipeCard.all.map { |recipe_card| recipe_card.recipe if recipe_card.user == self}
  end

  # creates RecipeCard instance for the RecipeCard join class
  def add_recipe_card(recipe)
    recipe_card_new = RecipeCard.new(self, recipe, rating)
    @recipes << recipe
  end

  def declare_allergen(ingredient)
    allergen_new = Allergen.new(ingredient, self)
  end

  # return ingredients this user is allergic TOPLEVEL_BINDING
  # iterate over allergens array with .map and return i.ingredient if i.user == self
  def allergens
    Allergen.all.map { |allergen| allergen.ingredient if allergen.user == self  }
  end

  # return highest rated recipes for this user
  # iterate over RecipeCard.all with .sort_by i.rating if i.user == self
  # => sorted ASC array with user's recipe
  # reverse the resulted array into DESC with .reverse.map and choose the first three elements with [0..2]
  def top_three_recipes
    sorted_array = RecipeCard.all.sort_by {|recipe_card| recipe_card.rating if recipe_card.user == self}
    sorted_array.reverse.map {|recipe_card| recipe_card.recipe }[0..2]
  end

  def most_recent_recipe
    @recipes.last
  end

end 
