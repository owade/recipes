require 'rails_helper'
require 'spec_helper'


RSpec.describe "rendering text directly" do
  it "displays the Name text" do

    render :text => "Name"

    expect(rendered).to match /Name/
  end

  it "displays the Description text" do

    render :text => "Description"

    expect(rendered).to match /Description/
  end

end