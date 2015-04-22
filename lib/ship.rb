class Ship
  attr_reader :size, :floating, :hits_left
  def initialize(size)
    @size = size
    @floating = true
    @hits_left = size
  end

  def hit # (ship, location) later
    @hits_left -= 1
    sunk?
  end

  def sunk?
    @floating = false if @hits_left <= 0
  end
end
