class Board
  attr_reader :size, :grid, :number_of_ships
  def initialize(options)
    @size = options.fetch(:size, 10)
    @cell = options.fetch(:cell)
    @number_of_ships = options.fetch(:number_of_ships, 3)
    create_grid
  end

  def create_grid
    @grid = {}
    letter_from_size = (@size + 64).chr
    ('A'..letter_from_size).each do |horizontal|
      (1..@size).each { |vertical| @grid["#{horizontal}#{vertical}"] = @cell.new }
    end
  end

  def has_coordinate(coordinate)
    @grid.key?(coordinate) 
  end

  def place_a_ship(ship, coordinate)
    # @grid[coordinate].place_ship(ship)
    @grid[coordinate].content = ship
  end
end
