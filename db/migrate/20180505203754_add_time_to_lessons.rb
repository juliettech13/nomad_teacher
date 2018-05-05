class AddTimeToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :time, :integer
  end
end
