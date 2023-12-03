require 'rails_helper'

RSpec.describe Train, type: :model do
  it {should belong_to(:station)}
end

# station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
# train1 = station.trains.create!(train_type: "Two-Rail", capacity: 442, is_express: false)