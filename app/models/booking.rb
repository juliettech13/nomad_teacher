class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :teacher
  belongs_to :lesson
end
