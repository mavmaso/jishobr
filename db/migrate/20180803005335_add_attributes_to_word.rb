class AddAttributesToWord < ActiveRecord::Migration[5.2]
  def change
    add_reference :words, :jlpt, foreign_key: true
  end
end
