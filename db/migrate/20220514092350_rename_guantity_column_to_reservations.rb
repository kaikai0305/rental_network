class RenameGuantityColumnToReservations < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :guantity, :quantity
  end
end
