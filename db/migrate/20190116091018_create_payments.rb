class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :list_id
      t.boolean :payment_successful

      t.timestamps
    end
  end
end
