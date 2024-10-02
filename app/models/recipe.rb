class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  # # validates :rating, inclusion: { :in [1,2,3,4,5,6,7,8,9,10] }
  validates :rating, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 10.0 }
end
