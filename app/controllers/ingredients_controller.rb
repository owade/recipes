class IngredientsController < ApplicationController

  def show
    @ingredients = Ingredient.findall(params[:id])
    #@ingredients = Ingredient.find(params[:id])
    @ing_name = Recipe.find(params[:id]).name
  end

  def new
    #@recipe_id = Recipe.find(params[:id])
    @ingredient = Ingredient.new
  end

  def create
    #@recipe_id = params[:id]
    @ingredient = Ingredient.new(recipe_params)
    if @ingredient.save
      flash[:notice] = "Ingredient Added Succesfully"
      redirect_to(root_path)
    else
      flash[:notice] = "An error occured Please Try Again"
      render('new')
    end
  end

  def recipe_params
    params.require(:ingredient).permit(:recipe_id,:name,:description)
  end

end
