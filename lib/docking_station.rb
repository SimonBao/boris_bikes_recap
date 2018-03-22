require_relative 'bike'

class DockingStation
  attr_reader :dock, :bike

  def initialize
    @dock = []
  end

  def release_bike
    fail 'No bikes available' unless !@dock.empty?
    @dock.pop
  end

  def dock_bike(bike)
    fail 'Docking station full' unless @dock.length <= 19
    @bike = bike
    @dock << @bike
  end

end