require 'rails_helper'
require 'spec_helper'

describe RecipesController do
  describe "GET Index" do
    it "gets the index view" do
      get "index"
      response.status.should be 200
    end

    it "gets the correct index view template" do
      get "index"
      response.should render_template("recipes/index")
    end
  end
end