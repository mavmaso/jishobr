# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

adverbio = WordType.create(title: 'adverbio')
noun = WordType.create(title:'substantivo')
verb1 = WordType.create(title: verbo)
verb5 =
verb0 =
Word.create(romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば', kanji: '例えば', word_type: adverbio)
Word.create(romaji: 'omiyage', pt: 'presente, souvenir', kana: 'おみやげ', kanji: 'お土産', word_type: noun)
