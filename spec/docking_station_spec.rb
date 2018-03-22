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

    it 'throws error when no bikes docked' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'throws error when dock is full' do 
      dock_many_bikes(20)
      expect{subject.dock_bike(Bike.new)}.to raise_error 'Docking station full'
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

  def dock_many_bikes(quantity)
    quantity.times { subject.dock_bike(Bike.new) }
  end
  
end