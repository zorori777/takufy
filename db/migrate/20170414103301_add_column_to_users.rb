class AddColumnToUsers < ActiveRecord::Migration[5.0]
  # Settiong  user information in detail
  def change
    add_column :users, :family_name, :string
    add_column :users, :first_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :first_name_kana, :string
  end
end
