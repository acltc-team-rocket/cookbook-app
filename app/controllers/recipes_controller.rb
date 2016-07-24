class RecipesController < ApplicationController

  def index
    @all_recipes = Recipe.all
  end

  def first_recipe
    @image = Recipe.first.image
  end

end
