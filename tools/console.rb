require_relative '../config/environment.rb'

#ingredients
ingredient_bacon = Ingredient.new("bacon")
ingredient_egg = Ingredient.new("egg")
ingredient_steak = Ingredient.new("steak")
ingredient_potato = Ingredient.new("potato")
ingredient_chocolate = Ingredient.new("chocolate")
ingredient_peanut = Ingredient.new("peanut")
ingredient_turkey = Ingredient.new("turkey")
ingredient_avocado = Ingredient.new("avocado")

# breakfast_ary
breakfast_ary = [ingredient_egg, ingredient_bacon]
dinner_ary = [ingredient_steak, ingredient_potato]
lunch_ary = [ingredient_turkey, ingredient_avocado]
midnight_desert = [ingredient_chocolate, ingredient_peanut]

#recipes
#recipe_breakfast = Recipe.new("breakfast")
recipe_breakfast = Recipe.new("breakfast")
recipe_dinner = Recipe.new("dinner")
recipe_desert = Recipe.new("desert")
recipe_lunch = Recipe.new("lunch")
recipe_midnight_crave = Recipe.new("midnight_crave")

#RecipeIngredients
# ri1 = RecipeIngredient.new(recipe_breakfast, ingredient_egg)
# ri2 = RecipeIngredient.new(recipe_breakfast, ingredient_bacon)
# ri3 = RecipeIngredient.new(recipe_desert, ingredient_peanut)
# ri4 = RecipeIngredient.new(recipe_desert, ingredient_avocado)


#users
user_briana = User.new("Briana")
user_oleg = User.new("Oleg")

#recipe cards
#recipe_card_briana_desert = user_briana.add_recipe_card(recipe_desert, 1011, 5)
recipe_card_briana_breakfast = user_briana.add_recipe_card(recipe_breakfast, 1010, 4)
recipe_card_briana_lunch = user_briana.add_recipe_card(recipe_lunch, 1010, 3)
recipe_card_briana_midnight_crave = user_briana.add_recipe_card(recipe_midnight_crave, 1010, 1)
recipe_card_oleg_desert = user_oleg.add_recipe_card(recipe_desert, 1010, 5)
recipe_card_oleg_dinner = user_oleg.add_recipe_card(recipe_dinner, 1010, 2)
recipe_card_oleg_lunch = user_oleg.add_recipe_card(recipe_lunch, 1010, 1)


#allergens
allergen_peanut = user_briana.declare_allergen("peanut")
allergen_dairy = user_briana.declare_allergen("dairy")


binding.pry
