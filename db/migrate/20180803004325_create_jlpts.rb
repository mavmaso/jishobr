class CreateJlpts < ActiveRecord::Migration[5.2]
  def change
    create_table :jlpts do |t|
      t.string :title

      t.timestamps
    end
  end
end
