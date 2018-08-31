class KanjiService
  def self.search(search_query)
    return unless search_query
      Kanji.where(['title LIKE :query OR onyomi LIKE :query OR ' \
                   'kun LIKE :query OR pt LIKE :query',
                   query: "#{search_query.downcase}%"])
  end
end
