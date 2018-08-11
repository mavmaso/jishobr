require 'rails_helper'

feature 'Kanji find' do
  scenario 'successfully' do
    create(:kanji, title: '例', onyomi: 'レイ', kun: 'たと.える', pt: 'exemplo')
    visit root_path
    fill_in 'Pesquise', with: '例'
    click_on 'Buscar'
    expect(page).to have_css('h3', text: 'Resultados da pesquisa de Kanjis')
    expect(page).to have_content('例')
    expect(page).to have_content('exemplo')
    expect(page).to have_content('たと.える')
    expect(page).to have_content('レイ')
    expect(page).to have_content('N5')
  end
  scenario 'view kanji by kanji' do
    create(:kanji, title: '例', onyomi: 'レイ', kun: 'たと.える',pt: 'exemplo',
                   radical: '人 (亻)', strike: 8, most_used: '399 de 2500')
    visit root_path
    fill_in 'Pesquise', with: '例'
    click_on 'Buscar'
    click_on '例'
    expect(page).to have_content('例')
    expect(page).to have_content('exemplo')
    expect(page).to have_content('たと.える')
    expect(page).to have_content('レイ')
    expect(page).to have_content('N5')
    expect(page).to have_content('人 (亻)')
    expect(page).to have_content('399 de 2500')
    expect(page).to have_content('8')
  end
end
