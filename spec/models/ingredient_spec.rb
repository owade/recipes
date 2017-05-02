require 'rails_helper'
require 'spec_helper'

describe Recipe do
  it 'must ensure name is present' do
    first = Recipe.create(name: nil , description: 'mbdnlsknfnnre')
    first.should_not be_valid
  end

  it 'must ensure decription is present' do
    first = Recipe.create(name: 'n' , description: nil)
    first.should_not be_valid
  end

  it 'should work correctly' do
    first = Recipe.create(name: 'a' , description: 'gegsrtnrhtr')
    first.should be_valid
  end

end