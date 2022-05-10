class AddSurNameToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :sur_name, :string
  end
end
