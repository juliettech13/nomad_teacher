class Lesson < ApplicationRecord
  belongs_to :teacher
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :picture, presence: true

  monetize :price_cents

  def timing
    if self.time < 60
      "#{self.time} mins"
    else
      "#{self.time / 60} hrs"
    end
  end
end
