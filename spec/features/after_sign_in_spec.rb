require 'rails_helper'
require_relative '../support/sign_in.rb'

feature 'After Sign Up' do
  let(:new_user) { SignIn.new }

  scenario 'See new links' do
    new_user.sign_in('test_user')

    expect(page).to have_link 'test_user'
    expect(page).to have_link 'Sign Out'
    expect(page).to have_link 'Add New Article'
  end

  scenario 'Clicking Add New Article' do
    new_user.sign_in('test_user')

    click_on 'Add New Article'

    expect(page).to have_content 'Create a New Article'
    expect(page).to have_button 'Create Article'
  end

  scenario 'Vote button switch' do
    new_user.sign_in('test_user')

    visit('/articles/1')

    expect(page).to have_button 'Vote'

    click_button 'Vote'

    expect(page).to have_button 'Unvote'
  end
end
