class KanjiService
  def self.search(search_query)
    return unless search_query
      Kanji.where(['title LIKE :queri OR onyomi LIKE :queri OR ' \
                   'kun LIKE :queri OR pt LIKE :queri',
                   queri: "#{search_query}%"])
  end
end
