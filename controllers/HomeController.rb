class HomeController < ApplicationController
	

	get '/' do

		if session[:logged_in]
			@username = session[:username]
		
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

post '/register'do
	user = User.new
	user.username = params["username"]
	user.password = params["password"]

	user.save
	redirect '/home/login'

end



	
end

