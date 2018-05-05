class Lesson < ApplicationRecord
  belongs_to :teacher

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :picture, presence: true

  def pricing
    self.price / 100
  end

  def timing
    if self.time < 60
      "#{self.time} mins"
    else
      "#{self.time / 60} hrs"
    end
  end
end
