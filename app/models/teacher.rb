class Teacher < ApplicationRecord
  has_many :lessons
  belongs_to :user

  def naming
    "#{self.user.first_name} #{self.user.last_name}"
  end
end
