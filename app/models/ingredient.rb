class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, presence: true
  validates :description, presence: true

  scope :findall, ->(num) { where("recipe_id = ?", num) }
end
