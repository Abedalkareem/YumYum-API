class Recipe < ApplicationRecord
  belongs_to :steps
  belongs_to :ingredients
end
