class Recipe < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_many :steps, inverse_of: :recipe
  accepts_nested_attributes_for :steps
end
