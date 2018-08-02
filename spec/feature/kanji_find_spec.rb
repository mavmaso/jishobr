require 'rails_helper'

feature 'Kanji find' do
  scenario 'successfully' do
    visit root_path
    fill_in 'Pesquise', with: '例'
    click_on 'Buscar'
    expect(page).to have_content('例')
    expect(page).to have_content('たと.える')
    expect(page).to have_content('レイ')
    expect(page).to have_content('N3')
  end
  scenario 'view kanji by kanji' do
    visit root_path
    fill_in 'Pesquise', with: '例'
    click_on 'Buscar'
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
