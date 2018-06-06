class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_number: 'first')
    @recipe.ingredients.build(ingredient_number: 'second')
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path
  end
end
