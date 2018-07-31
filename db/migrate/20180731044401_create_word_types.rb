class CreateWordTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :word_types do |t|
      t.string :title
      t.string :sub_type
      t.text :description

      t.timestamps
    end
  end
end
