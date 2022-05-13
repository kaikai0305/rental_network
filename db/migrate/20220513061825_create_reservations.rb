class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :room_id
      t.integer :lending_id
      t.datetime :start
      t.datetime :finish
      t.timestamps
    end
  end
end
