class CreateSandwiches < ActiveRecord::Migration[6.0]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :style
      t.integer :rating
      t.string :image

      t.timestamps
    end
  end
end
