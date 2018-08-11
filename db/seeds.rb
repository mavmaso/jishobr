# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(admin: true, email: 'user@mail.com', password: '123qwe', name: 'Teste')
n5 = Jlpt.create(title: 'N5')
adverbio = WordType.create(title: 'adverbio')
noun =  WordType.create(title:'substantivo')
#verb1 = WordType.create(title: verbo, sub_type: 'Ichidan', description: 'blabla')
#verb5 = WordType.create(title: verbo, sub_type: 'Godan', description: 'blabla')
#verb0 = WordType.create(title: verbo, sub_type: 'Irregular', description: 'blabla')
Word.create(romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば', kanji: '例えば', word_type: adverbio, jlpt: n5)
Word.create(romaji: 'omiyage', pt: 'presente, souvenir', kana: 'おみやげ', kanji: 'お土産', word_type: noun, jlpt: n5)
Kanji.create(title: '例', pt: 'exemplo', radical: '人 (亻)', most_used: '399 de 2500', strike: 8, kun: 'たと.える', onyomi: 'レイ', eg: '例えば', jlpt: n5)
