require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize 
    @bikes = []
    20.times { @bikes.push(Bike.new) }
  end

  def release_bike
    fail "Docking station empty!" if @bikes.empty?
    @bikes.pop
  end
  
  def dock(bike)
    fail "Docking station full" if @bikes.length == 20
    @bikes.push(bike)
  end
end
