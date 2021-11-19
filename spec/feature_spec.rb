require_relative '../lib/docking_station'
require_relative '../lib/bike'

docking_station = DockingStation.new()
bike = Bike.new

puts docking_station.release_bike