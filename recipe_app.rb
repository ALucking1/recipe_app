require 'sinatra/base'
require './models/weather.rb'
require './models/recipe.rb'

class WeatherRecipe < Sinatra::Base
  get '/' do
    @weather = WeatherApi.new
    # @recipe = Recipe.new
    @weather.recipe_sample
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
