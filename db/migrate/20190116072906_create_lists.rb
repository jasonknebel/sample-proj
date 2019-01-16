class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.integer :total_amount
      t.boolean :has_paid
      t.timestamps
    end
  end
end
