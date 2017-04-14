class HomeController < ApplicationController
	

	get '/' do
#if logged in go to the home page and display all the recipes
		if session[:logged_in]
			@username = session[:username]
			@recipes = Recipe.all
			puts @recipes
			erb :home
		else
			@message = "You are not logged in!"
				erb :login
		end

	end


	get '/login'do
		
		erb :login
	end

	get '/register'do
		
		erb :register
	end

	get '/logout'do

	 session.destroy
	 redirect '/home/login'

	end

post '/login'do

	username = params[:username]
	password = params[:password]
	user = User.find_by(username: username)

	#compares the hash to determine login
	if user && user.authenticate(password)
		session[:logged_in] = true
		session[:username] = username
		session[:user_id] = user.id
		puts "something different"
		puts session[:user_id]
		redirect '/home'



	else
		@message = "Login unsuccessful"
		erb :login
	end
end

post '/'do
	puts params

	@recipe = Recipe.all




end

post '/register'do
	user = User.new
	user.username = params["username"]
	user.password = params["password"]

	user.save
	redirect 'home'

end



	
end

