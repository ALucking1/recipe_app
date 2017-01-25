require 'sinatra/base'
require './models/weather.rb'
require './models/recipes.rb'
require './models/recipe_selector.rb'

class WeatherRecipe < Sinatra::Base
  get '/' do
    @weather = Weather.new
    @weather_recipe = RecipeSelector.new
    @weather_recipe.selected
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
