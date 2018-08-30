require 'rails_helper'

feature 'Edit JLPT and Word_Type' do
=begin
  scenario 'succefully with JLPT' do
    create(:user, admin: true)
    create(:jlpt)
    create(:jlpt, title: 'N4')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    click_on 'JLPT-etc'
    within '#N5' do
      click_on 'Editar'
    end
    fill_in 'Jlpt', with: 'N 5'
    expect(page).to have_content('N 5')
  end
=end
  scenario 'delete JLTP' do
    create(:user, admin: true)
    create(:jlpt)
    create(:jlpt, title: 'N4')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    click_on 'JLPT-etc'
    within '#N5' do
      click_on 'Apagar'
    end
    expect(page).to_not have_content('N5')
  end
=begin
  scenario 'succefully with word_type' do
     create(:user, admin: true)
     create(:word_type)
     create(:word_type, title: 'sub')
     visit root_path
     click_on 'Entrar'
     fill_in 'Email', with: 'user@mail.com'
     fill_in 'Senha', with: '123456'
     click_on 'Logar'
     click_on 'Editar'
     click_on 'JLPT-etc'
     within '#sub' do
       click_on 'Editar'
     end
     fill_in 'Jlpt', with: 'substantivo'
     expect(page),to have_content('substantivo')
  end
=end
  scenario 'delete word_type' do
    create(:user, admin: true)
    create(:word_type)
    create(:word_type, title: 'sub')
    visit root_path
    click_on 'Entrar'
    fill_in 'Email', with: 'user@mail.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'
    click_on 'Editar'
    click_on 'JLPT-etc'
    within '#sub' do
      click_on 'Apagar'
    end
    expect(page).to_not have_content('substantivo')
  end
end