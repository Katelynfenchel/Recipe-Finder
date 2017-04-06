class IngredientController < ApplicationController

	get '/breakfast'do

	@ingredients = Ingredient.all
	@ingredients.to_json

	end

	post '/'do





	end


end