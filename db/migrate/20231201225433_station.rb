class Station < ActiveRecord::Migration[7.0]
  def change
  create_table :stations do |t|
    t.string :name
    t.integer :platform_count
    t.boolean :food_stand

    t.timestamps
    end
  end
end
