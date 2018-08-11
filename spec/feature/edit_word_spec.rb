require 'rails_helper'

feature 'Edit word' do
  scenario 'succefully' do
    create(:user, admin: true)
    create(:word, romaji:'tateba')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    select 'word', from: 'Editaveis'
    click_on 'tateba'
    fill_in 'Romaji', with: 'tatoeba'
    fill_in 'Pt', with: 'exemplo'
    fill_in 'Kana', with: 'たとえば'
    fill_in 'Kanji', with: '例えば'
    fill_in 'Observacoes', with: ' '
    select 'adverbio', from: 'Tipo'
    select 'N3', from: 'JLPT'
    click_on 'Enviar'
    expect(page).to have_content('Editado com sucesso')
    expect(page).to have_content('tatoeba')
    expect(page).to have_content('exemplo')
    expect(page).to have_content('たとえば')
    expect(page).to have_content('例えば')
    expect(page).to have_content('adverbio')
    expect(page).to have_content('N3')
  end
  scenario 'delete' do
    create(:word, romaji:'tateba')
    create(:user, admin: true)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    select 'word', from: 'Editaveis'
    click_on 'tateba'
    click_on 'Apagar'
  end
  scenario 'fail' do
  end
end
