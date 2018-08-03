class AddPtToWords < ActiveRecord::Migration[5.2]
  def change
    add_column :words, :pt, :string
  end
end
