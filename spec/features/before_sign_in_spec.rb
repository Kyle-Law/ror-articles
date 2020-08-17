require 'rails_helper'

feature 'visit root page' do
  scenario 'see Sign In and Sign Up links' do
    visit('/')

    expect(page).to have_link 'Sign In'
    expect(page).to have_link 'Sign Up'
  end

  scenario "see each category's links and if data is seeded" do
    visit('/')

    expect(page).to have_link 'HTML/CSS'
    expect(page).to have_link 'Ruby/Rails'
    expect(page).to have_link 'JavaScript'
    expect(page).to have_link 'React'

  end

  scenario "redirect to sign_in when clicking 'Vote' of article#show page" do
    visit('/articles/1')

    expect(page).to have_button 'Vote'

    click_button 'Vote'

    expect(page).to have_content 'Please sign in first!'
  end
end
