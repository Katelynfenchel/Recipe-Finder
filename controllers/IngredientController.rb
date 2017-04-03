class IngredientController < ApplicationController

	get '/'do

	@ingredients = Ingredient.all
	@ingredients.to_json

	end

	post '/'do
		puts params
		
		@ingredients = Ingredient.new
		@ingredients.name = params[:name]

		@ingredients.save
		@ingredients.to_json





	end


end