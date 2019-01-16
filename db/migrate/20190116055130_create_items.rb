class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :price
      t.string :name
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end
