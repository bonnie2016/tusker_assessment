class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.references :address, foreign_key: true
      t.boolean :delivered, :default => false

      t.timestamps
    end
    add_index :orders, ["user_id", "content_id"], :unique => true
  end
end
