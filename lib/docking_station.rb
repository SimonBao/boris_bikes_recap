require 'bike'

class DockingStation
  attr_reader :dock, :bike

  def initialize
    @dock = []
  end

  def release_bike
    @bike = Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

end