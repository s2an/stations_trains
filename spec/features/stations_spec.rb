require 'rails_helper'

RSpec.describe Station, type: :feature do
  it 'exists' do
    station = Station.new(name: "Roanoke Station", platform_count: 1, food_stand: false)
    expect(station).to be_valid
  end

  it 'I1,US1: A visitor sees the name of each station recod in the system' do
    # User Story 1, Parent Index [ √ ] done
    # For each parent table
    # As a visitor
    # When I visit '/parents'
    # Then I see the name of each parent record in the system
    station1 = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    station2 = Station.create!(name: "Lexington Station", platform_count: 2 , food_stand: true)
    
    visit "/stations"
    
    expect(page).to have_content(station1.name)
    expect(page).to have_content(station2.name)
  end
  
  it 'I1,US2: A visitor sees the stations attributes by its id' do
    # User Story 2, Parent Show [ √ ] done
    # As a visitor
    # When I visit '/parents/:id'
    # Then I see the parent with that id including the parent's attributes
    # (data from each column that is on the parent table)
    station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)

    visit "/stations/#{station.id}"

    expect(page).to have_content(station.name)
    expect(page).to have_content(station.platform_count)
    expect(page).to have_content(station.food_stand ? "Yes" : "No" )
  end
end
