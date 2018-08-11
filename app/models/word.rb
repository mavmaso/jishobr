class Word < ApplicationRecord
  belongs_to :word_type
  belongs_to :jlpt
  validates :romaji, :pt, :kana, presence: true
end
