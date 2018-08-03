require 'rails_helper'

feature 'Kanji find' do
  scenario 'successfully' do
    create(:kanji, title: '例', on: 'レイ', kun: 'たと.える')
    visit root_path
    fill_in 'Procura', with: '例'
    click_on 'Procurar'
    expect(page).to have_css('h3',text: 'Resultados da pesquisa de Kanjis')
    expect(page).to have_content('例')
    expect(page).to have_content('たと.える')
    expect(page).to have_content('レイ')
    expect(page).to have_content('N5')
  end
  scenario 'view kanji by kanji' do
    visit root_path
    fill_in 'Procura', with: '例'
    click_on 'Procurar'
    click_on '例'
    expect(page).to have_content('例')
    expect(page).to have_content('たと.える')
    expect(page).to have_content('レイ')
    expect(page).to have_content('N3')
    expect(page).to have_content('人 (亻)')
    expect(page).to have_content('399 de 2500')
    expect(page).to have_content('8')
  end
end
