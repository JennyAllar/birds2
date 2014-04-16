require 'spec_helper'
require_relative '../bird_app'

Capybara.app = BirdApp

feature 'Birdies' do

  before do
    DB[:birds].delete
  end
  scenario 'user can add and see birds' do
    visit ('/')
    bird_name = "finch #{SecureRandom.uuid}"
    bird_color = "red #{SecureRandom.uuid}"
    expect(page).to have_no_content(bird_name)
    expect(page).to have_no_content(bird_color)

    fill_in"Bird Name", with: (bird_name)
    fill_in"Bird Color", with: (bird_color)
    click_on"Add"
    expect(page).to have_content(bird_name)
    expect(page).to have_content(bird_color)
  end
end