require 'rails_helper'

RSpec.describe StationTrainsController, type: :feature do
  
  it 'I1,US5: A visitor sees each child, with attributes, associated with the parent, by id' do
    # User Story 5, Parent Children Index [ √ ] done
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

  it 'I1,US7: A visitor sees one parent and counts their associated children' do
    # User Story 7 Parent Child Count [ √ ] done
    # As a visitor
    # When I visit a parent's show page
    # I see a count of the number of children associated with this parent
    station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    Train.create!(train_type: "Two-Rail", capacity: 442, is_express: false, station: station)
    Train.create!(train_type: "Monorail", capacity: 88, is_express: true, station: station)
    
    visit "/stations/#{station.id}"

    expect(page).to have_content(station.trains.count)
  end

  # it 'I1,US10: A visitor sees a link to the parents childs id page from thier show page' do
    # User Story 10 Parent Child Index Link [ √ ] done




end
