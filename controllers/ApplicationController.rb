class ApplicationController < Sinatra::Base
			enable :sessions

		require 'bundler'
		Bundler.require

		db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/vegetarian_meals')

#this query the database
	ActiveRecord::Base.establish_connection(
		:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
		:database => db.path[1..-1]

	)

	set :public_dir, File.expand_path('../../public', __FILE__)
	set :views, File.expand_path('../../views', __FILE__)
	set :session_secret, 'test'



not_found do
	"Not Found!"
end






end