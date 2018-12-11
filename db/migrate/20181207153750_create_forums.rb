class CreateForums < ActiveRecord::Migration[5.2]
  def change
    create_table :forums do |t|
      t.string :title
      t.integer :category_id

      t.timestamps
    end
  end
end
