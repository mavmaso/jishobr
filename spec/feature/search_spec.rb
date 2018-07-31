require 'rails_helper'

feature 'search word' do
  scenario 'successfully' do
    palavra = create(:word, romanji: 'tatoeba')
    visit root_path
    fill_in 'Buscar', with: 'palavra.romanji'
    expect(page).to have_content(palavra.romaji)
  end
end