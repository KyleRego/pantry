class Ingredient < ApplicationRecord
  belongs_to :category, required: false
  has_and_belongs_to_many :recipes
  has_one :amount
end
