class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :city

      t.timestamps
    end
    add_index :addresses, "city", :unique => true
  end
end
