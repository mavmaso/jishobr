require 'rails_helper'

feature 'Add Word' do
  scenario 'succefully' do
    create(:user, admin: true)
    Jlpt.create(title: 'N3')
    WordType.create(title: 'adverbio')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Add Palavras'
    fill_in 'Romaji', with: 'tatoeba'
    fill_in 'Pt', with: 'exemplo'
    fill_in 'Kana', with: 'たとえば'
    fill_in 'Kanji', with: '例えば'
    fill_in 'Observacoes', with: ' '
    select 'adverbio', from: 'Tipo'
    select 'N3', from: 'JLPT'
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
    create(:user, admin: true)
    Jlpt.create(title: 'N3')
    WordType.create(title: 'adverbio')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Add Palavras'
    fill_in 'Romaji', with: ' '
    fill_in 'Pt', with: ' '
    fill_in 'Kana', with: ' '
    fill_in 'Kanji', with: '例えば'
    select 'N3', from: 'JLPT'
    click_on 'Enviar'
    expect(page).to have_content('例えば')
    expect(page).to have_content('N3')
    expect(page).to_not have_content('Adicionado com sucesso')
  end
end
