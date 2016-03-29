class CreateWhiteboxes < ActiveRecord::Migration
  def change
    create_table :whiteboxes do |t|
      t.text :content
      t.boolean :edit
      t.timestamps null: false
    end
  end
end
