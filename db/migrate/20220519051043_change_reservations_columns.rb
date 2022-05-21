class ChangeReservationsColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :quantity, :integer
    rename_column :reservations, :room_name, :room_id
    add_column :reservations, :reason, :text
    add_column :reservations, :group, :string
  end
end
