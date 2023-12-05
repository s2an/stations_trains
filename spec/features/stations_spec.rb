require 'rails_helper'

RSpec.describe Station, type: :feature do
  it 'exists' do
    station = Station.new(name: "Roanoke Station", platform_count: 1, food_stand: false)
    expect(station).to be_valid
  end

  it 'I1,US1: A visitor sees the name of each station record in the system' do
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
  
  it 'I1,US5: A visitor sees each child, with attributes, associated with the parent' do
    # User Story 5, Parent Children Index [  ] done
    # As a visitor
    # When I visit '/parents/:parent_id/child_table_name'
    # Then I see each Child that is associated with that Parent with each Child's attributes
    # (data from each column that is on the child table)
    station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    train1 = Train.create!(train_type: "Two-Rail", capacity: 442, is_express: false, station: station)
    train2 = Train.create!(train_type: "Monorail", capacity: 88, is_express: true, station: station)

    visit "/stations/#{station.id}/trains"

    expect(page).to have_content(train1.train_type)
    expect(page).to have_content(train1.capacity)
    expect(page).to have_content(train1.is_express ? "Yes" : "No" )
    expect(page).to have_content(train2.train_type)
    expect(page).to have_content(train2.capacity)
    expect(page).to have_content(train2.is_express ? "Yes" : "No" )
  end
end
