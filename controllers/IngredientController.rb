class IngredientController < ApplicationController

	get '/'do
	

	end

	post '/'do
		puts params
		
		@ingredients = Ingredient.new
		@ingredients.name = params[:name]

		@ingredients.save
		@ingredients.to_json





	end


end