class Teacher < ApplicationRecord
  has_many :lessons
  belongs_to :user
end
