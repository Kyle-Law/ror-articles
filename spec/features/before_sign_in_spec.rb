require 'rails_helper'

feature 'visit root page' do
  scenario 'see Sign In and Sign Up links' do
    visit('/')

    expect(page).to have_link 'Sign In'
    expect(page).to have_link 'Sign Up'
  end

  scenario "see 'Upcoming' and 'Past' links" do
    visit('/')

    expect(page).to have_link 'Upcoming'
    expect(page).to have_link 'Past'
  end

  scenario 'check if data is seeded' do
    visit('/')

    expect(page).to have_link 'Deep work - transform your life'
  end

  scenario "redirect to sign_in when clicking 'Register' of event#show page" do
    visit('/events/5')

    expect(page).to have_button 'Register Now'

    click_button 'Register Now'

    expect(page).to have_content 'Please sign in first!'
  end
end
