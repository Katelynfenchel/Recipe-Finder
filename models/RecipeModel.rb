class Recipe < ActiveRecord::Base

	has_and_belongs_to_many :ingredients, join_table: 'ingredients_recipes', class_name: 'Ingredient'
 

end