class AddSurNameKanaToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :sur_name_kana, :string
  end
end
