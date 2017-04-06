	class RecipeController < ApplicationController


#get route to breakfast
get '/breakfast'do
#getting all the recipes with the column breakfast
	@recipes = Recipe.where(meal: 'Breakfast')

	
# binding.pry
#pring out all the recipes onto the recipes/breakfast page
	puts @recipes
	erb :breakfast


end


post '/breakfast' do
	

end


get '/dinner'do
	@recipes = Recipe.where(meal: 'Dinner')

	erb :dinner

end

get '/dessert'do
	@recipes = Recipe.where(meal: 'Dessert')

	erb :dessert

end

get '/sides'do
	@recipes = Recipe.where(meal: 'Side')

	erb :sides

end



#if you wanted to create your own recipe, this is how it would be done
post '/'do
	puts params
	#all the properties from the table
	@recipe = Recipe.new
	@recipe.meal = params[:type]
	@recipe.name = params[:name]
	@recipe.image_url= params[:image_url]
	@recipe.description = params[:description]
	@recipe.user_id = session[:user_id]
	# grabs the user id from the session and prints out
	puts session[:user_id]
	# binding.pry
	
	@recipe.save
	@recipe.to_json

	

end



end
