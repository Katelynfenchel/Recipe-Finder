class RecipeController < ApplicationController


#get route to breakfast
get '/breakfast'do

	@recipes = Recipe.where(meal: 'Breakfast')
	

	puts @recipes
	erb :breakfast


end


post '/breakfast' do
	

end


get '/dinner'do

	erb :dinner

end

get '/dessert'do

	erb :dessert

end

get '/sides'do

	erb :sides

end




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
