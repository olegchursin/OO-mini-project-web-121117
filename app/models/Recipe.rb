class Recipe

  attr_accessor :name, :users, :ingredients, :allergens

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # => recipe instance with the highest number of users
  # create a hash to collect recipe instances as keys and iterate over values
  # use .values.max hash methods as condition
  def self.most_popular
    # initialize new hash with values set to 0
    mp_hash = Hash.new(0)

    # iterate over RecipeCard.all array and populate mp_hash with keys = recipes (if the key doesn't exist it is created, if it exists the value is incremented)
    RecipeCard.all.each do |recipecard|
      mp_hash[recipecard.recipe] += 1
    end

    # iterate over mp_hash hash and return the recipe wit highest value using .values.max
    mp_hash.each { |recipe, count|  recipe.name if count == mp_hash.values.max}
  end


  def self.users
    RecipeCard.all.select {|recipecard| recipecard.user if recipecard.recipe == self}
  end

  def self.ingredients
    Recipeingredient.all.select {|ri| ri.ingredient if ri.recipe == self}
  end

  # we need to .map Allergen.all and return ingredient if it is an allergens
  # we will need an array of all ingredients first
  # apply .include?(allergen.ingredient) method as a condition
  def self.allergens
    ingredients = RecipeCard.all.map {|ri| ri.ingredient}
    Allergen.all.map {|allergen| allergen.ingredient if ingredients.include?(allergen.ingredient)}
  end

  def add_ingredients(ingredients_ary)
    ingredients_ary.each { |ingredient| RecipeIngredient.new(self, ingredient) }
  end

end
