class Ingredient < ApplicationRecord
  has_many :doses
  # You cannot delete an ingredient if it used by at least one cocktail.
  has_many :cocktails, through: :doses

  # An ingredient must have a unique name.
  validates :name, presence: true, uniqueness: true
end
