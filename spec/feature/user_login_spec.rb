require 'rails_helper'

feature 'User login' do
  scenario 'successfully' do
    create(:user)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with:'user@mail.com'
    fill_in 'Senha', with:'123456'
    click_on 'Logar'
    expect(page).to have_content('Usuario: Zeh Teste')
  end
  scenario 'successfully' do
    create(:user, admin: true)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with:'user@mail.com'
    fill_in 'Senha', with:'123456'
    click_on 'Logar'
    expect(page).to have_content('Usuario: Zeh Teste')
    expect(page).to have_content('ADMIN = true')
  end
end
