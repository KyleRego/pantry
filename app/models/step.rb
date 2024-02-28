class Step < ApplicationRecord
  belongs_to :recipe, required: true
  validates :number, presence: true, uniqueness: { scope: :recipe_id }
end