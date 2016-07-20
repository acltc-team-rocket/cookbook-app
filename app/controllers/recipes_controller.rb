class RecipesController < ApplicationController

  def first_recipe
    @image = Recipe.first.image
  end

  def last_recipe
    @last_recipe = Recipe.last
  end
end
