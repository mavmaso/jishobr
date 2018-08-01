require 'rails_helper'

feature 'search word' do
  scenario 'successfully' do
    tipo = WordType.create(title: 'adverbio')
    create(:word, romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば', kanji: '例えば', word_type: tipo)
    visit root_path
    fill_in 'Pesquise', with: 'tatoeba'
    click_on 'Buscar'
    expect(page).to have_content('tatoeba')
    expect(page).to have_content('por exemplo')
    expect(page).to have_content('たとえば')
    expect(page).to have_content('例えば')
  end
  scenario 'fail' do
    visit root_path
    fill_in 'Pesquise', with: ' '
    click_on 'Buscar'
    expect(page).to have_content('Não foi encontrado nada')
  end
  scenario 'view word by word' do
    tipo = WordType.create(title: 'adverbio')
    create(:word, romaji: 'tatoeba', pt: 'por exemplo', kana: 'たとえば', kanji: '例えば', word_type: tipo)
    visit root_path
    fill_in 'Pesquise', with: 'tatoeba'
    click_on 'Buscar'
    click_on 'tatoeba'
    expect(page).to have_content('tatoeba')
    expect(page).to have_content('por exemplo')
    expect(page).to have_content('たとえば')
    expect(page).to have_content('例えば')
  end
end
