require 'rails_helper'
require 'spec_helper'

describe IngredientsController do
  describe "GET Show" do

    # it "assigns @ing" do
    #   ing = Ingredient.create
    #   get :index
    #   expect(assigns(:teams)).to eq([team])
    # end

    it "gets the correct index show template" do
      get "show" , :id => 7
      response.should render_template("ingredients/show")
    end

  end
end