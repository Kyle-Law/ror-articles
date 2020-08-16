require 'rails_helper'
require_relative '../support/sign_in.rb'

feature 'After Sign Up' do
  let(:new_user) { SignIn.new }

  scenario 'See new links' do
    new_user.sign_in('test_user')

    expect(page).to have_link 'test_user'
    expect(page).to have_link 'Sign Out'
    expect(page).to have_link 'Add New Event'
  end

  scenario 'Clicking Add New Event' do
    new_user.sign_in('test_user')

    click_on 'Add New Event'

    expect(page).to have_content 'Create a New Event'
    expect(page).to have_button 'Create Event'
  end

  scenario 'Create new event' do
    new_user.sign_in('test_user')

    click_on 'Add New Event'

    new_user.fill_in_event_form(
      title: 'Test Title'
    )

    click_button 'Create Event'
    expect(page).to have_content 'Upcoming Events'
    expect(page).to have_link 'Test Title'
  end

  scenario 'Registration button switch' do
    new_user.sign_in('test_user')

    visit('/events/5')

    expect(page).to have_button 'Register Now'

    click_button 'Register Now'

    expect(page).to have_button 'Unregister'
  end
end
