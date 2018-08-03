class RemoveOnFromKanji < ActiveRecord::Migration[5.2]
  def change
    remove_column :kanjis, :on, :string
  end
end
