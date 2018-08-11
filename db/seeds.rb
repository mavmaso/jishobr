# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

verb1ga = WordType.create(title: 'verbo ichidan', sub_type: 'intransitivo/jidoushi', description: 'blabla')
verb1wo = WordType.create(title: 'verbo ichidan', sub_type: 'transitivo/tadoushi', description: 'blabla')
verb5ga = WordType.create(title: 'verbo godan', sub_type: 'intransitivo/jidoushi', description: 'blabla')
verb5wo = WordType.create(title: 'verbo godan', sub_type: 'transitivo/tadoushi', description: 'blabla')
verb0 = WordType.create(title: 'verbo irregular', sub_type: ' ', description: 'blabla')
adv = WordType.create(title: 'adverbio')
noun = WordType.create(title:'substantivo')
adji = WordType.create(title: 'adjetivo', sub_type: 'i')
adjna = WordType.create(title: 'adjetivo', sub_type: 'na')
#Word.create(romaji: '', pt: '', kana: '', kanji: '', word_type: , jlpt: n5)
Word.create(romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば', kanji: '例えば', word_type: adv, jlpt: n5 )
Word.create(romaji: 'omiyage', pt: 'presente, souvenir', kana: 'おみやげ', kanji: 'お土産', word_type: noun, jlpt: n5 )
Word.create(romaji: 'au ', pt: 'encontrar', kana: 'あう', kanji: '会う', word_type: noun, jlpt: n5 )
Word.create(romaji: 'ao ', pt: 'azul', kana: 'あお', kanji: '青', word_type: adji, jlpt: n5 )
Word.create(romaji: 'aka ', pt: 'vermelho', kana: 'あか', kanji: '赤', word_type: adji, jlpt: n5 )
Word.create(romaji: 'akarui', pt: 'brilhante', kana: 'あかるい', kanji: '明るい', word_type: adji , jlpt: n5 )
Word.create(romaji: 'aki', pt: 'outono', kana: 'あき', kanji: '秋', word_type: noun , jlpt: n5 )
Word.create(romaji: 'aku', pt: '', kana: 'あく', kanji: '開く', word_type: noun , jlpt: n5 )
Word.create(romaji: 'akeru', pt: 'abrir-se', kana: 'あける', kanji: '開ける', word_type: verb1ga , jlpt: n5 )
Word.create(romaji: 'ageru', pt: 'dar', kana: 'あげる', kanji: '上げる', word_type: verb1wo , jlpt: n5 )
Word.create(romaji: 'asa', pt: '', kana: 'あさ', kanji: '朝', word_type: noun , jlpt: n5 )
