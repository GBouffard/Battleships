require 'board'

describe Board do
  # We don't want to link the cell class with the board class directly
  # so we will pass a double called cell_class in options. 
  let(:board) { Board.new({cell: cell_class}) }
  # what is cell_class? It's a double that we create and that has a method new like a real class has.
  # then in our double, we define what .new returns, and for our test, it returns a cell double.
  let(:cell_class) { double :cell_class, new: cell }
  # that we define below. Interesting concept to link the cell class to the board class.
  let(:cell) { double :cell, content: '' }

  it 'has a 100 cells on the gird when created' do
    expect(board.grid.count).to eq 100
  end

  it 'can place a ship' do
  end

  xit 'knows the number of ships to be placed for the game' do
  end

  xit 'can work out the coordinate to use for a given ship and its size' do
  end

  xit 'can place a ship of a given size (such as 3 for example) vertically' do
  end

  xit 'does not allow ships to overlap each other when being placed' do
  end

  xit 'knows if a coordinate is on the board' do
  end

  xit 'does not place a ship on the board if any part is outside the boundaries' do
  end

  xit 'can hit items on the board' do
  end

  xit 'cannot hit a cell outside of the boundaries' do
  end

  xit 'knows if there are floating ships' do
  end

  xit 'knows if all ships are sunk' do
  end

  xit 'knows which ships are on the board' do
  end

  xit 'knows that the board is not ready when there are no ships on the board' do
  end

  xit 'knows that the board is ready when all the ships have been placed' do
  end

  xit 'can fill all the content with water' do
  end

  xit 'knows when all ships have been sunk and the game is lost' do
  end
end
