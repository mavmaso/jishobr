require 'rails_helper'

feature 'Add Kanji' do
  scenario 'succefully' do
    create(:user, admin: true)
    Jlpt.create(title: 'N5')
    WordType.create(title: 'adverbio')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Add Kanji'
    fill_in 'Kanji', with: '例'
    fill_in 'On', with: 'レイ'
    fill_in 'Kun', with: 'たと.える'
    fill_in 'Sentido', with: 'exemplo'
    fill_in 'Mais usado', with: '399 de 2500'
    fill_in 'Radical', with: '人 (亻)'
    fill_in 'Tracos', with: '8'
    fill_in 'Exemplos de uso', with: ''
    select 'N5', from: 'JLPT'
    click_on 'Enviar'
    expect(page).to have_content('Adicionado com sucesso')
    expect(page).to have_content('例')
    expect(page).to have_content('exemplo')
    expect(page).to have_content('たと.える')
    expect(page).to have_content('レイ')
    expect(page).to have_content('N5')
    expect(page).to have_content('人 (亻)')
    expect(page).to have_content('399 de 2500')
    expect(page).to have_content('8')
  end
  scenario 'cant be blank' do
    create(:user, admin: true)
    Jlpt.create(title: 'N5')
    WordType.create(title: 'adverbio')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Add Kanji'
    fill_in 'On', with: 'レイ'
    fill_in 'Kun', with: 'たと.える'
    fill_in 'Radical', with: '人 (亻)'
    select 'N5', from: 'JLPT'
    click_on 'Enviar'
    expect(page).to_not have_content('Adicionado com sucesso')
  end
end