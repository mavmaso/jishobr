class CreateKanjis < ActiveRecord::Migration[5.2]
  def change
    create_table :kanjis do |t|
      t.string :title
      t.string :radical
      t.string :most_used
      t.integer :strike
      t.string :on
      t.string :kun
      t.text :eg
      t.references :jlpt, foreign_key: true

      t.timestamps
    end
  end
end
