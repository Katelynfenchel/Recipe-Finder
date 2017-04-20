class HomeController < ApplicationController
	

			get '/' do
		#if logged in go to the home page and display all the recipes
				p session
				if session[:logged_in]
				p 'hi'
					@username = session[:username]
					@recipes = Recipe.all
				
					erb :home
				else
					p 'hello'
					@message = "You are not logged in!"
						redirect '/home/login'
				end

			end


			get '/login'do
				
				erb :login
			end

			get '/register'do
				
				erb :register
			end

			get '/logout' do
		    	session[:user_id]= nil
		    	redirect '/home/login'
		  	end

		post '/login'do

			username = params[:username]
			password = params[:password]
			
			user = User.find_by(username: username)
				if user && user.authenticate(password)
					puts 'this is happening'
					session[:logged_in] = true
					session[:username] = username
					session[:user_id] = user.id
					puts session[:user_id]
					redirect '/home'



				else
					puts 'else is happeing'
					@message = "Login unsuccessful"
					erb :login
				end
		end

		post '/'do
			

			@recipe = Recipe.all

		end

		post '/register'do
			user = User.new
			
			user.username = params["username"]
			user.password = params["password"]

			user.save
			redirect '/home/login'

		end



	
end

