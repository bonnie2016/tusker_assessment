class CreateBoxes < ActiveRecord::Migration[5.0]
  def change
    create_table :boxes do |t|
      t.string :code
      
      t.timestamps
    end
    add_index :boxes, "code", :unique => true
  end
end
