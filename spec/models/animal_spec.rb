require 'rails_helper'

RSpec.describe Animal, type: :model do
  it "is not valid without a name and binomial" do
    cow = Animal.create
    expect(cow.errors[:name]).to_not be_empty
    expect(cow.errors[:binomial]).to_not be_empty
  end 
  it "throws an error if an animal's common name exactly matches the scientific binomial" do
    horse = Animal.create name:"horse", binomial:"horse"
    expect(horse.errors[:name]).to_not be_empty
  end
  it "throws an error if the animal's common name and scientific binomial are not unique" do
    Animal.create name:"pig", binomial: "Sus scrofa domesticus"
    pig = Animal.create name:"pig", binomial: "Sus scrofa domesticus"
    expect(pig.errors[:name]).to_not be_empty
    expect(pig.errors[:binomial]).to_not be_empty
  end
end