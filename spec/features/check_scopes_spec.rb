require 'rails_helper'

feature "Click 'Upcoming' and 'Past' links" do
  scenario "see 'Upcoming Events'after clicking Upcoming Link" do
    visit('/')
    click_on 'Upcoming'

    expect(page).to have_content 'Upcoming Events'
  end

  scenario "see 'Past Events' after clicking 'past' " do
    visit('/')
    click_on 'Past'

    expect(page).to have_content 'Past Events'
  end
end
