class CreateDelis < ActiveRecord::Migration[6.0]
  def change
    create_table :delis do |t|
      t.string :name
      t.string :address
      t.string :style
      t.string :hours_open
      t.string :neighborhood
      t.string :borough
      t.integer :lat
      t.integer :lng

      t.timestamps
    end
  end
end
