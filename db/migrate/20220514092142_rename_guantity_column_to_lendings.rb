class RenameGuantityColumnToLendings < ActiveRecord::Migration[6.1]
  def change
    rename_column :lendings, :guantity, :quantity
  end
end
