class Word < ApplicationRecord
  belongs_to :word_type
  belongs_to :jlpt

  def create; end
end
