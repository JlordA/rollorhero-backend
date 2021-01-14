class CreateDeliSandwiches < ActiveRecord::Migration[6.0]
  def change
    create_table :deli_sandwiches do |t|
      t.belongs_to :sandwich, null: false, foreign_key: true
      t.belongs_to :deli, null: false, foreign_key: true

      t.timestamps
    end
  end
end
