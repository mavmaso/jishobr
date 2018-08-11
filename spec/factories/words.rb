FactoryBot.define do
  factory :word do
    romaji 'tatoeba'
    kana 'MyString'
    kanji 'MyString'
    pt 'exemplo'
    obs 'Observações em geral'
    word_type
    jlpt
  end
end
