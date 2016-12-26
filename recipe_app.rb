require 'sinatra/base'
require 'json'
require 'rest-client'

class WeatherRecipe < Sinatra::Base
  get '/' do
    url = 'http://api.openweathermap.org/data/2.5/weather?q=London&units=metric&APPID=b4d9ad4b01c56f6638dcdd451d752a2f'
    response = RestClient.get(url)
    hash = JSON.parse(response)
    hash['main'].each do |x|
      @value = x[1]
    end
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
