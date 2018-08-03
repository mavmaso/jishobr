class KanjiService
  def self.search(search_query)
    if search_query
      Kanji.where(['title LIKE :query OR radical LIKE :query OR ' \
                   'kun LIKE :query',querys: "#{search_query}%"])
    end
  end
end
