class ChangeReservationsColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :room_name, :integer
    remove_column :reservations, :customer_id, :integer
    remove_column :reservations, :lending_id, :integer
    add_column :reservations, :room_name, :string
    add_column :reservations, :customer_name, :string
    add_column :reservations, :lending_name, :string
    add_column :reservations, :reason, :text
    add_column :reservations, :group, :string
  end
end
