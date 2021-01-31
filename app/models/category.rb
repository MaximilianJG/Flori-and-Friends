class Category < ApplicationRecord

  has_many :dog_categories
  has_many :dogs, through: :dog_categories
end
