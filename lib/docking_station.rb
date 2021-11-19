require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @capacity.times { @bikes.push(Bike.new) }
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
    @bikes.length >= @capacity ? true : false
  end

  def empty?
    @bikes.length == 0 ? true : false
  end
end