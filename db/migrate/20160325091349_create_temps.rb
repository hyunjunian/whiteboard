class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|
      t.string :content
      t.timestamps null: false
    end
  end
end
