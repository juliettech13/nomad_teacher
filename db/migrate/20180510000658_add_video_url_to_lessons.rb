class AddVideoUrlToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :video_url, :string
  end
end
