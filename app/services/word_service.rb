class WordService
  def self.search(search_query)
    return unless search_query
      Word.where(['romaji LIKE :query OR kana LIKE :query OR ' \
                  'kanji LIKE :query OR pt LIKE :query',
                  query: "#{search_query.downcase}%"])
  end
end
