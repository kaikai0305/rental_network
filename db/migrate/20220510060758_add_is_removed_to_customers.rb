class AddIsRemovedToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :is_removed, :boolean,default: true, null: false
  end
end
