class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_index :users, :name, unique: true
    add_column :users, :is_signed_in, :boolean, default: true
  end
end
