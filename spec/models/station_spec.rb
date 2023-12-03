require 'rails_helper'

RSpec.describe Station, type: :model do
  it {should have_many(:trains)}
end
