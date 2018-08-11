class Kanji < ApplicationRecord
  belongs_to :jlpt
  validates :title, :pt, :strike, presence: true
end
