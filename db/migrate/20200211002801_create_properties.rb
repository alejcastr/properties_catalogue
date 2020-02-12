class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :bedrooms
      t.decimal :bathrooms
      t.text :parking_spaces
      t.text :information
      t.integer :user_id

      t.timestamps
    end
  end
end
