class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :romaji
      t.string :kana
      t.string :kanji
      t.text :pt
      t.text :obs
      t.references :word_type

      t.timestamps
    end
  end
end
