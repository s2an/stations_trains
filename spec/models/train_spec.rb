require 'rails_helper'

RSpec.describe Train, type: :module do
  it 'exists' do
    train = Train.new(train_type: "Two-Rail", capacity: 442, is_express: false)

    expect(train).to be_valid
  end

end
