class RecipesController < ApplicationController

  def index
    sort_attribute = params[:sort_attribute]
    if sort_attribute
      @recipes = Recipe.order(sort_attribute)
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def new
  end

  def create
    title = params[:title]
    ingredients = params[:ingredients]
    directions = params[:directions]
    prep_time = params[:prep_time]
    image_url = params[:image]
    recipe = Recipe.new(title: title, user_id: current_user.id, ingredients: ingredients, directions: directions, prep_time: prep_time, image: image_url)
    recipe.save
    redirect_to "/recipes/#{recipe.id}"
    
  end

  def edit  
    @recipe = Recipe.find_by(id: params[:id])
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.update_attributes(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions], prep_time: params[:prep_time], image: params[:image])
    @recipe.save
    redirect_to "/recipes/#{@recipe.id}"
  end



end
