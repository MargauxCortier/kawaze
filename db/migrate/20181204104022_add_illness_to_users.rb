class AddIllnessToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :illness, :string
  end
end
