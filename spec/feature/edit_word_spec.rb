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
    click_on 'Palavras'
    click_on 'tateba'
    fill_in 'Romaji', with: 'tatoeba'
    fill_in 'Pt', with: 'exemplo'
    fill_in 'Kana', with: 'たとえば'
    fill_in 'Kanji', with: '例えば'
    fill_in 'Observacoes', with: ' '
    select 'substantivo', from: 'Tipo'
    select 'N5', from: 'JLPT'
    click_on 'Enviar'
    expect(page).to have_content('Editado com sucesso')
    expect(page).to have_content('tatoeba')
    expect(page).to have_content('exemplo')
    expect(page).to have_content('たとえば')
    expect(page).to have_content('例えば')
    expect(page).to have_content('substantivo')
    expect(page).to have_content('N5')
  end
  scenario 'delete' do
    create(:word, romaji:'tateba')
    create(:word, romaji:'omiyage')
    create(:user, admin: true)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    click_on 'Palavras'
    within '#word-tateba' do
      click_on 'Apagar'
    end
    expect(page).to_not have_content('tateba')
    expect(page).to have_content('Apagado com sucesso')
    expect(page).to have_content('omiyage')
  end
  scenario 'fail' do
  end
end
