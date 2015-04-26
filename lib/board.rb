class Board
  attr_reader :size, :grid, :number_of_ships, :coordinates, :all_ships_coords
  def initialize(options)
    @size = options.fetch(:size, 10)
    @cell = options.fetch(:cell)
    @number_of_ships = options.fetch(:number_of_ships, 3)
    @all_ships_coords = []
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

  def place_a_ship(ship, coordinate_1, direction)
    # that method changes the content of each cell that corresponds to that ship to a ship.
    @ship_size = ship.size
    @coordinate_1 = coordinate_1
    @direction = direction
    legal_placement?
    (@all_ships_coords += @coordinates).uniq!
    coordinates_to_use.each { |coord| @grid[coord].content = ship }
  end

  def coordinates_to_use
    @coordinates = []
    if @direction == 'horizontal'
      @letter = @coordinate_1[0]
      @start_point = @coordinate_1[1].to_i - 1
      @ship_size.times { @coordinates << "#{@letter}#{@start_point += 1 }" }
    else
      @start_point = @coordinate_1[1]
      @letter = (@coordinate_1[0].ord - 1)
      @ship_size.times { @coordinates << "#{(@letter += 1).chr}#{@start_point}" }
    end
    @coordinates
  end

  def hit(cell_at)
    grid[cell_at].content.shoot!
  end

  def legal_placement?
    fail 'coordinates not on the board' unless coordinates_to_use.all? { |c| has_coordinate(c) }
    fail 'Not possible. It would overlap another ship!' if coordinates_to_use.any? { |c| @all_ships_coords.include?(c) }
  end
end
