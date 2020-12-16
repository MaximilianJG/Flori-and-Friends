class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :position, presence: true, inclusion: { in: ["1. Vorsitzende", "2. Vorsitzende", "Kassenwart", "Schriftführer", "Präsidentin - Verein Rumänien / Sheltermanagerin", "Tierpfleger", "Other"] }
end
