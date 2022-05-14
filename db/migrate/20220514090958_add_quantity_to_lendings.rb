class AddQuantityToLendings < ActiveRecord::Migration[6.1]
  def change
    add_column :lendings, :guantity, :integer
  end
end
