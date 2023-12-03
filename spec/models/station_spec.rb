require 'rails_helper'

RSpec.describe Station, type: :module do
  it 'exists' do
    station = Station.new(name: "Roanoke Station", platform_count: 1, food_stand: false)

    expect(station).to be_valid
  end

  xit 'US1: has many trains' do
    # User Story 1, Parent Index [ ] done
    # For each parent table
    # As a visitor
    # When I visit '/parents'
    # Then I see the name of each parent record in the system
    station1 = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
    station2 = Station.create!(name: "Lexington Station", platform_count: 2 , food_stand: true)
    visit "/station"
  end
  
end
