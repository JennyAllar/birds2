require 'spec_helper'
require_relative '../bird_app'

Capybara.app = BirdApp

feature 'Birdies' do
  scenario 'user can add and see birds' do
    visit ('/')
    bird_name = "finch #{SecureRandom.uuid}"
    expect(page).to have_no_content(bird_name)
    fill_in"Bird Name", with: (bird_name)
    click_on"Add"
    expect(page).to have_content(bird_name)
  end
end