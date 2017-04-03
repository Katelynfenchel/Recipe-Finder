require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/RecipeController'
require './controllers/IngredientController'

require './models/UserModel'
require './models/RecipeModel'
require './models/IngredientModel'



map('/'){run ApplicationController}
map('/home'){run HomeController}
map('/recipes'){run RecipeController}
map('/ingredients'){run IngredientController}