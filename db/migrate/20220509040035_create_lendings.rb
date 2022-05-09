class CreateLendings < ActiveRecord::Migration[6.1]
  def change
    create_table :lendings do |t|
      t.string :name
      t.text :caption
      t.timestamps
    end
  end
end
