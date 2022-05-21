class AddColumnReservations < ActiveRecord::Migration[6.1]
  def change
      add_column :reservations, :quantity, :integer
  end
end
