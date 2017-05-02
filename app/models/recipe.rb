class Recipe < ApplicationRecord
  has_many :ingredients
  validates :name, presence: true , uniqueness: true
  validates :description, presence: true
end
