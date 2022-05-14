class ChangeIsRemovedDefaultOnCustomers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :customers, :is_removed, from: true, to: false
  end
end
