class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.references :teacher, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
