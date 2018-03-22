require 'docking_station'
describe DockingStation do  

  it 'initialises with an empty dock' do 
    expect(subject.dock).to be_empty
  end

  describe '#release_bike' do 
    it { is_expected.to respond_to :release_bike }

    it 'releases working bike' do 
      bike = subject.release_bike
      expect(bike.working?).to be true
    end
  end

  describe '#dock_bike' do
    it { is_expected.to respond_to :dock_bike }
    it 'returns stored bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
  end
  
end