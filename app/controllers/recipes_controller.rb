class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipes = Recipe.find_by(id: params[:id])
  end

  def new
  end

  def create
    name = params[:name]
    price = params[:price]
    description = params[:description]
    image_url = params[:image]
    product = Product.new(name: name, price: price, description: description, image: image_url)
    product.save
  end

  def edit
    @id = params[:id]
  end

end
