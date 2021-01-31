class Dog < ApplicationRecord
  has_many_attached :photos
  # has_many :contacts
  has_many :dog_categories
  has_many :categories, through: :dog_categories

  validates :name, presence: true
  validates :gender, presence: true, inclusion: { in: ["M", "F"] }
  validates :race, presence: true
  validates :birthdate, presence: true
end
