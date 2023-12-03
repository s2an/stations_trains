require 'rails_helper'

RSpec.describe Train, type: :model do
  it {should belong_to(:station)}
end
