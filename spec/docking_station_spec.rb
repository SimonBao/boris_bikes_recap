require 'docking_station'
describe DockingStation do  

  it 'initialises with an empty dock' do 
    expect(subject.dock).to be_empty
  end
  
end