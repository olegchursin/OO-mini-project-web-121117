class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular # RecipeCard
    # recipe with the highest number of users, has most recipe cards
    # => recipe instance
    all_recipe_cards = RecipeCard.all # => array of recipe card instances
    recipe_hash = all_recipe_cards.group_by { |recipe_card| recipe_card.recipe } # => hash of recipes where key = recipe instance and value = [RecipeCard instances]
    # recipe_hash = {key1 => [1,2], }
    most_popular_array = recipe_hash.max_by { |key, value| value.count }
    most_popular_array.first
  end

  def users # works!
    # return users who have recipe cards with self (this recipe)
    # => array of user instances
    recipe_specific_recipe_card = RecipeCard.all.select { |recipe_card| recipe_card.recipe == self}
    recipe_specific_recipe_card.map {|recipe| recipe.user }
  end

  def ingredients #works!    ## RecipeIngredient
    # returns ingredients for specific recipe
    all_recipe_ingredients = RecipeIngredient.all # = > arrray
    relevant_recipe_ingredients = all_recipe_ingredients.select { |recipe_ingredient| recipe_ingredient.recipe == self }
    relevant_recipe_ingredients.map { |rri| rri.ingredient }
  end

  def allergens # iterate over ingredients and see which ones match allergens

  end

  def add_ingredients(ary) # works!    ## how do we give the recipe its ingredients?
    ary.each {|ingredient_object| RecipeIngredient.new(self, ingredient_object) }
    self.ingredients
  end

end
