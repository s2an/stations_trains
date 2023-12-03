require 'rails_helper'

RSpec.describe Station, type: :model do
  it {should have_many(:trains)}
end

# station = Station.create!(name: "Roanoke Station", platform_count: 1, food_stand: false)
# train = Train.create!(train_type: "Two-Rail", capacity: 442, is_express: false)