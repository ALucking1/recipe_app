require_relative 'recipes'
require_relative 'weather'

class RecipeSelector

  attr_reader :url, :title, :recipe, :api

  def initialize
    @recipe = Recipes.new
    @api = Weather.new
  end

  def selected
    if @api.get_api < 10
      @recipe.brrr_days
      link_and_title
    elsif @api.get_api >= 10 && @api.get_api < 15
      @recipe.not_too_cold_days
      link_and_title
    elsif @api.get_api >= 15 && @api.get_api < 20
      @recipe.mild_days
      link_and_title
    elsif @api.get_api >= 20 && @api.get_api < 30
      @recipe.balmy_days
      link_and_title
    else
      @recipe.hot_days
      link_and_title
    end
  end

  private

  def link_and_title
    @url = @recipe.rand_rec[0]
    @title = @recipe.rand_rec[1]
  end

end
