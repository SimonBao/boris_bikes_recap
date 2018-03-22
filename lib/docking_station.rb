require_relative 'bike'

class DockingStation
  attr_reader :dock, :bike

  def initialize
    @dock = []
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @dock.pop
  end

  def dock_bike(bike)
    @bike = bike
    @dock << @bike
  end

end