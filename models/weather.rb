require 'json'
require 'rest-client'
require_relative 'recipe'

class WeatherApi

  attr_reader :recipe, :url, :title

  def initialize
    @recipe = Recipe.new
  end

  def get_api
    url = 'http://api.openweathermap.org/data/2.5/weather?q=London&units=metric&APPID=b4d9ad4b01c56f6638dcdd451d752a2f'
    response = RestClient.get(url)
    hash = JSON.parse(response)
    hash['main'].each do |x|
      return x[1].to_i
    end
  end

  def intro
    if get_api < 10
      'Brrr!'
    elsif get_api >= 10 && get_api < 15
      'Hmm, not too cold.'
    elsif get_api >= 15 && get_api < 20
      'Mild, mild, mild.'
    elsif get_api >= 20 && get_api < 30
      'Well, it\'s positively balmy!'
    else
      'You want to eat?!'
    end
  end

  def recipe_sample
    if get_api < 10
      @recipe.brrr_days
      @url = @recipe.rand_rec[0]
      @title = @recipe.rand_rec[1]
    elsif get_api >= 10 && get_api < 15
      @recipe.not_too_cold_days
      @url = @recipe.rand_rec[0]
      @title = @recipe.rand_rec[1]
    elsif get_api >= 15 && get_api < 20
      @recipe.mild_days
      @url = @recipe.rand_rec[0]
      @title = @recipe.rand_rec[1]
    elsif get_api >= 20 && get_api < 30
      @recipe.balmy_days
      @url = @recipe.rand_rec[0]
      @title = @recipe.rand_rec[1]
    else
      @recipe.hot_days
      @url = @recipe.rand_rec[0]
      @title = @recipe.rand_rec[1]
    end
  end

end
