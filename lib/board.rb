class Board
  attr_reader :size, :grid
  def initialize(options)
    @size = options.fetch(:size, 10)
    @cell = options.fetch(:cell)
    create_grid
  end

  def create_grid
    @grid = {}
    letter_from_size = (@size + 64).chr
    ('A'..letter_from_size).each do |horizontal|
      (1..@size).each { |vertical| @grid["#{horizontal}#{vertical}"] = @cell.new }
    end
  end
end
