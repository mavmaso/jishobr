class AddAttributosToKanji < ActiveRecord::Migration[5.2]
  def change
    add_column :kanjis, :pt, :string
  end
end
