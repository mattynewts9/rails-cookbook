class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe
  validates :comment, length: { minimum: 6, message: 'Must be longer than 6 Characters' }
  validates :recipe_id, uniqueness: { scope: :category_id, message: 'Recipe and category pairing must be unique.' }
end
