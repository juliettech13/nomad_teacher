class AddSkuToLesson < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :sku, :string
  end
end
