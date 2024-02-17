class Amount < ApplicationRecord
  has_one :ingredient
  belongs_to :unit
end
