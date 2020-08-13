class Cocktail < ApplicationRecord
  has_many :doses
  has_many :reviews
  has_many :ingredients, through: :doses
end