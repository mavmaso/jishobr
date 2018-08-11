require 'rails_helper'

feature 'Edit types' do
  scenario 'succefully' do
    create(:user, admin: true)
    create(:word_type, title:'adj')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    select 'word_type', from: 'Editaveis'
    click_on 'adj'
    fill_in 'Title', with: 'adjetivo'
  end
  scenario 'delete' do
  end
  scenario 'fail' do
  end
end
