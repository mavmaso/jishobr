class KanjiService
  def self.search(search_query)
    if search_query
      Kanji.where(['title LIKE :queri OR radical LIKE :queri OR ' \
                   'kun LIKE :queri',queri: "#{search_query}%"])
    end
  end
end
