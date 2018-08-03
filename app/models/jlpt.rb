class Jlpt < ApplicationRecord
  has_many :words, dependent: :destroy
  has_many :kanjis, dependent: :destroy
end
