require 'rails_helper'

feature 'Edit word' do
  scenario 'succefully' do
    create(:user, admin: true)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'

  end
  scenario 'delete' do
    create(:user, admin: true)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    
  end
  scenario 'fail' do
    create(:user, admin: true)
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
  end
end
