class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.text :background
      t.integer :longitude
      t.integer :latitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
