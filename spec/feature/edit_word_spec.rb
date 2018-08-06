require 'rails_helper'

feature 'Edit Word' do
  scenario 'succefully' do
    Jlpt.create(title: 'N3')
    WordType.create(title: 'adverbio')
    visit root_path
    click_on 'Add Palavra'
    fill_in 'romaji', with: 'tatoeba'
    fill_in 'pt', with: 'exemplo'
    fill_in 'kana', with: 'たとえば'
    fill_in 'kanji', with: '例えば'
    fill_in 'exemplo', with: ' '
    select 'adverbio', from 'Tipo'
    select 'N3', from 'JLPT'
    click_on 'Enviar'
    expect(page).to have_content('Adicionado com sucesso')
    expect(page).to have_content('tatoeba')
    expect(page).to have_content('exemplo')
    expect(page).to have_content('たとえば')
    expect(page).to have_content('例えば')
    expect(page).to have_content('adverbio')
    expect(page).to have_content('N3')
    expect(page).to have_content('')
  end
  scenario 'cant be blank' do
    Jlpt.create(title: 'N3')
    WordType.create(title: 'adverbio')
    visit root_path
    click_on 'Add Palavra'
    fill_in 'romaji', with: ' '
    fill_in 'pt', with: ' '
    fill_in 'kana', with: ' '
    fill_in 'kanji', with: '例えば'
    select 'N3', from 'JLPT'
    click_on 'Enviar'
    expect(page).to_not have_content('Adicionado com sucesso')
    expect(page).to have_content('例えば')
    expect(page).to have_content('N3')
  end
end
