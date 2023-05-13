class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.integer :play_count
      t.boolean :age_appropriate
      t.references :box, foreign_key: true
      # t.references :box, null: false, foreign_key: true

      t.timestamps
    end
  end
end
