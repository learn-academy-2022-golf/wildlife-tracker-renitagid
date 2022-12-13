require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it "is not valid without a latitude, longitude, and date" do
    sight = Sighting.create
    expect(sight.errors[:latitude]).to_not be_empty
    expect(sight.errors[:longitude]).to_not be_empty
    expect(sight.errors[:date]).to_not be_empty
  end 
end
