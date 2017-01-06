class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :item

      t.timestamps
    end
    add_index :contents, "item", :unique => true
  end
end
