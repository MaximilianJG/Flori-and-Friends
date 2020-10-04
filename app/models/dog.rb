class Dog < ApplicationRecord
  has_many_attached :photos

  validates :name, presence: true
  validates :gender, presence: true, inclusion: { in: ["M", "F"] }
  validates :race, presence: true
  validates :birthdate, presence: true
  validates :category, presence: true, inclusion: { in: ["Notfälle", "Rüden", "Hündinnen", "Handicap Dogs", "Unsere Angsthässchen", "Glücksfellchen Zuhause"] }
end
