class CreateDisslikes < ActiveRecord::Migration[5.2]
  def change
    create_table :disslikes do |t|
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
