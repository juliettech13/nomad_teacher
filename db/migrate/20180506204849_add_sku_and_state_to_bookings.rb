class AddSkuAndStateToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :lesson_sku, :string
    add_column :bookings, :state, :string
  end
end
