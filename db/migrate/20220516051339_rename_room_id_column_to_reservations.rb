class RenameRoomIdColumnToReservations < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :room_id, :room_name
  end
end
