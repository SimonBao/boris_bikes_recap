require 'docking_station'
describe DockingStation do  

  it 'initialises with an empty dock' do 
    expect(subject.dock).to be_empty
  end

  describe '#release_bike' do 
    it { is_expected.to respond_to :release_bike }

    it 'releases working bike' do
      subject.dock_bike(Bike.new) 
      bike = subject.release_bike
      expect(bike.working?).to be true
    end

    it 'error when no bikes docked' do 
      expect{subject.release_bike}.to raise_error 'No bikes available'
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