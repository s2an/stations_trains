class Trains < ActiveRecord::Migration[7.0]
  def change
    create_table :trains do |t|
      t.string :train_type
      t.integer :capacity
      t.boolean :is_express
      t.references :station, null: false, foreign_key: true
     
      t.timestamps
    end
  end
end
