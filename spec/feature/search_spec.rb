require 'rails_helper'

feature 'search word' do
  scenario 'successfully' do
    #palavra = create(:word, romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば')
    tipo = WordType.create(title: 'adverbio')
    Word.create(romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば',
                kanji: '例えば',word_type: tipo.title)
    visit root_path
    fill_in 'Pesquise', with: 'tatoeba'
    click_on 'Buscar'
    expect(page).to have_content('tatoeba')
    expect(page).to have_content('por exemplo')
    expect(page).to have_content('たとえば')
    expect(page).to have_content('例えば')
  end
end