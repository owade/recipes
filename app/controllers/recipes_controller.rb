class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe Created Succesfully"
      redirect_to(root_path)
    else
      render('index')
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:description)
  end

end
