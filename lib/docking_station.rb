require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize 
    @bikes = []
    20.times { @bikes.push(Bike.new) }
  end

  def release_bike
    fail "Docking station empty!" if empty?
    @bikes.pop
  end
  
  def dock(bike)
    fail "Docking station full" if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.length >= 20 ? true : false
  end

  def empty?
    @bikes.length == 0 ? true : false
  end
end