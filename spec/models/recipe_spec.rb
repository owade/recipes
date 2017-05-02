require 'rails_helper'
require 'spec_helper'

describe Recipe do
  it 'must ensure name is present' do
    first = Recipe.create(name: nil , description: 'aaabb')
    first.should_not be_valid
  end

  it 'must ensure decription is present' do
    first = Recipe.create(name: 'a' , description: nil)
    first.should_not be_valid
  end

end