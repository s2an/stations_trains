require 'rails_helper'

RSpec.describe Train, type: :feature do
  it 'exists' do
    station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    train = Train.new(train_type: "Two-Rail", capacity: 442, is_express: false, station: station)
    
    expect(train).to be_valid
  end
  
  it 'I1,US3: A visitor sees each child and thier attributes' do
    # User Story 3, Child Index [ √ ] done
    # As a visitor
    # When I visit '/child_table_name'
    # Then I see each Child in the system including the Child's attributes
    # (data from each column that is on the child table)
    station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    train1 = Train.create!(train_type: "Two-Rail", capacity: 442, is_express: false, station: station)
    train2 = Train.create!(train_type: "Monorail", capacity: 88, is_express: true, station: station)
    
    visit "/trains"

    expect(page).to have_content(train1.train_type)
    expect(page).to have_content(train1.capacity)
    expect(page).to have_content(train1.is_express ? "Yes" : "No" )
    expect(page).to have_content(train2.train_type)
    expect(page).to have_content(train2.capacity)
    expect(page).to have_content(train2.is_express ? "Yes" : "No" )
  end

end