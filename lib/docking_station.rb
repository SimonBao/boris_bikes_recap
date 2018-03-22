require 'bike'

class DockingStation
  attr_reader :dock 

  def initialize
    @dock = []
  end

  def release_bike
    @bike = Bike.new
  end

end