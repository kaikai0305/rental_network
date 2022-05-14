class AddQuantityToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :guantity, :integer
  end
end
