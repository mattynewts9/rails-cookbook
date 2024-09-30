class Category < ApplicationRecord
  has_many :bookmarks, dependant: :destroy
  has_many :recipes, through: :bookmarks
  validates :name, uniqueness: true
end
