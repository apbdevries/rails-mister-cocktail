class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  OPTIONS = ["6 leaves",
  "1.5 oz",
  "4.5 cl",
  "9 cl",
  "1.33 oz",
  "1.33 oz",
  "2 cl"]

end
