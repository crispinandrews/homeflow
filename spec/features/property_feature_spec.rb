require 'rails_helper'

feature 'Searches' do
  scenario 'User can search and get result' do
    visit('/')
    fill_in('bedrooms', with: '13')
    click_button('Search')
    expect(page).to have_content('Results found: 1')
  end
  scenario 'User can search and not get result' do
    visit('/')
    fill_in('bedrooms', with: '5')
    click_button('Search')
    expect(page).to have_content('Results found: 0')
  end
end
