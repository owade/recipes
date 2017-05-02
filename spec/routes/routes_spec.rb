require 'rails_helper'
require 'spec_helper'

RSpec.describe "routes", :type => :routing do
  it "routes / to the recipes controller" do
    expect(:get => "/").to route_to(:controller => "recipes", :action => "index")
  end

  it "routes /recipes to the recipes controller" do
    expect(:get => "/recipes").to route_to(:controller => "recipes", :action => "index")
  end


  it "routes /ingredients/1 to the ingredients controller" do
    expect(get: '/ingredients/1').to route_to(controller: 'ingredients', action: 'show' ,id: '1')
  end

end