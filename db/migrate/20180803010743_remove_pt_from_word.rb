class RemovePtFromWord < ActiveRecord::Migration[5.2]
  def change
    remove_column :words, :pt, :string
  end
end
