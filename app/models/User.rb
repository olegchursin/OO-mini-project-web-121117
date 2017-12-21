class User

  attr_accessor :name, :user

  @@all = []

  def initialize(name)
    @name = name
    @recipes = []
    @allergens = []
    @@all << self
  end

  def self.all # this works!
    @@all
  end

  def recipes  # this works!
    @recipes
  end

  def add_recipe_card(recipe, date, rating)
    new_recipe_card = RecipeCard.new(recipe, date, rating) # this works!
    @recipes << recipe
    new_recipe_card.user = self # self is a user
    new_recipe_card.recipe = recipe
    new_recipe_card
  end

  def declare_allergen(ingredient)  # works!
    new_allergen = Allergen.new(ingredient)
    @allergens << new_allergen
  end

  def allergens # works!
    @allergens
  end

  def top_three_recipes # works!
    user_recipe_cards = RecipeCard.all.select { |recipe_card| recipe_card.user == self}  # => array of user's cards
    top_three_recipe_cards = user_recipe_cards.sort_by {|x| x.rating }.reverse!.take(3)  # => arrray of top three cards
    top_three_recipe_cards.map {|recipe_card| recipe_card.recipe}    # => recipes
  end

  def most_recent_recipe # works!
    @recipes.last
  end

end
