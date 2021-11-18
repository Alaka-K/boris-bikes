require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize 
    @bikes = []
    20.times { @bikes.push(Bike.new) }
  end

  def release_bike
    fail "Docking station empty!" unless !@bikes.empty?
    bike = @bikes.pop
  end
  
  def dock(bike)
  if @bikes.length == 20
    fail "Docking station full" 
  end
  @bikes.push(bike)
  end
end
