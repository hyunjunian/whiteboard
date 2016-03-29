class CreateEditings < ActiveRecord::Migration
  def change
    create_table :editings do |t|
      t.boolean :edit
      t.integer :whitebox_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
