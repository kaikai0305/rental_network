class CreateReservationLendings < ActiveRecord::Migration[6.1]
  def change
    create_table :reservation_lendings do |t|
      t.integer :reservation_id
      t.integer :lending_id
      t.integer :quantity
      t.text :memo

      t.timestamps
    end
  end
end
