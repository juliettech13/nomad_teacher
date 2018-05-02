class AddCategoryToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :category, :string
  end
end
