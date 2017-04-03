class RecipeController < ApplicationController

get '/'do
	erb :recipe

end

post '/'do
	puts params
	#all the properties from the table
	@recipe = Recipe.new
	@recipe.meal = params[:type]
	@recipe.name = params[:name]
	@recipe.user_id = session[:user_id]
	# grabs the user id from the session and prints out
	puts session[:user_id]
	# binding.pry
	
	@recipe.save
	@recipe.to_json

	

end



end
