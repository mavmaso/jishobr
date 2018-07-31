class WordType < ApplicationRecord
  has_many :words, dependent: :destroy

end
