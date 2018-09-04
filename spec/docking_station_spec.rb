require 'docking_station.rb'
describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  describe 'dock_bike' do
    it { is_expected.to respond_to(:dock_bike).with(1).argument}
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike

    end
  end
  describe 'check_bike' do
    it { is_expected.to respond_to(:check_bike)}
    it "returns the docked bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.check_bike).to eq bike
    end
  end
end
