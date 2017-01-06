class CreateBoxContents < ActiveRecord::Migration[5.0]
  def change
    create_table :box_contents do |t|
      # t.references :box, foreign_key: true
      t.string :code
      t.references :content, foreign_key: true

      t.timestamps
    end
    # add_index :box_contents, ["box_id", "content_id"], :unique => true
    add_index :box_contents, ["code", "content_id"], :unique => true
  end
end
