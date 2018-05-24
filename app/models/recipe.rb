class Recipe < ApplicationRecord
  has_many :steps
  has_many :ingredients
  belongs_to :user, optional: true

  accepts_nested_attributes_for :steps
  accepts_nested_attributes_for :ingredients

end
