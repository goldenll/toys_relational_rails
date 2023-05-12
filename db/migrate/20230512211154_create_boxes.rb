class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes do |t|
      t.string :name
      t.integer :capacity
      t.boolean :full

      t.timestamps
    end
  end
end
