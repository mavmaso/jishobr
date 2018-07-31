# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

adverbio = WordType.create(title: 'adverbio')
noun = WordType.create(title:'substantivo')
Word.create(romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば', word_type: adverbio.title)
