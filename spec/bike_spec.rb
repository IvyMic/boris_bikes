require 'bike.rb'

describe Bike do
  let(:bike){Bike.new}
  it 'tests that instance of Bike Class responds to working?' do
    expect(bike).to respond_to(:working?)
  end
  
  describe "#working?" do
    it "returns true" do
      expect(bike.working?).to eql(true)
    end
  end
end
