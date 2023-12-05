require 'rails_helper'

RSpec.describe 'Global', type: :feature do

  it 'I1,US8: A visitor sees a link to the child index on every page' do
    # User Story 8 Child Index Link [ √ ] done
    # As a visitor
    # When I visit any page on the site
    # Then I see a link at the top of the page that takes me to the Child Index
    station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    train = Train.create!(train_type: "Two-Rail", capacity: 442, is_express: false, station: station)

    visit "/stations"
    expect(page).to have_link("Train Index", href: trains_path)
    
    visit "/stations/#{station.id}"
    expect(page).to have_link("Train Index", href: trains_path)
    
    visit "/trains"
    expect(page).to have_link("Train Index", href: trains_path)
    
    visit "/trains/#{train.id}"
    expect(page).to have_link("Train Index", href: trains_path)
    
    click_link "Train Index"
    expect(current_path).to eq(trains_path)
  end

end