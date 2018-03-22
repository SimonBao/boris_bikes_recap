require 'docking_station'
describe DockingStation do  

  it 'initialises with an empty dock' do 
    expect(subject.dock).to be_empty
  end

  describe '#release_bike' do 
    it { is_expected.to respond_to :release_bike }
  end
  
end