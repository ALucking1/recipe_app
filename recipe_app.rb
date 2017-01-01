require 'sinatra/base'
require './models/weather.rb'

class WeatherRecipe < Sinatra::Base
  get '/' do
    @weather = WeatherApi.new
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
