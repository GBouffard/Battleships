require 'board'

describe Board do
  # We don't want to link the cell class with the board class directly
  # so we will pass a double called cell_class in options. 
  let(:board) { Board.new({cell: cell_class, number_of_ships: 5}) }
  # what is cell_class? It's a double that we create and that has a method new like a real class has.
  # then in our double, we define what .new returns, and for our test, it returns a cell double.
  let(:cell_class) { double :cell_class, new: cell }
  # that we define below. Interesting concept to link the cell class to the board class.
  let(:cell) { double :cell, content: '' }
  let(:ship) { double :ship, size: 3, floating: true}
  let(:cell_with_ship) { double :cell }

  it 'has a 100 cells on the gird when created' do
    expect(board.grid.count).to eq 100
  end

  it 'knows the number of ships in the game' do
    expect(board.number_of_ships).to eq 5
  end

  it 'knows if a coordinate is on the board' do
    expect(board.has_coordinate('J10')).to be true
  end

  it 'can place a ship of a given size (2 for example)' do
    # To test this, and for tracking purposes, we need to create another cell, that we place in 'A1':
    board.grid['A1'] = cell_with_ship
    # in that tracked cell, we want to place a ship, with a method place_a_ship that take ship and coordinate as arguments.
    # this method changes the content. what we need to test is that the content has actually been changed as agreed:
    expect(cell_with_ship).to receive(:content=).with ship
    board.place_a_ship(ship, 'A1')
    board.grid['A2'] = cell_with_ship
    expect(cell_with_ship).to receive(:content=).with ship
    board.place_a_ship(ship, 'A2')
  end

  xit 'can work out the coordinate to use for a given ship and its size' do
  end

  xit 'can place a ship of a given size (such as 3 for example) vertically' do
  end

  xit 'does not allow ships to overlap each other when being placed' do
  end

  xit 'does not place a ship on the board if any part is outside the boundaries' do
  end

  xit 'can hit items on the board' do
    # aren't we hitting the content of a cell?
  end

  xit 'cannot hit a cell outside of the boundaries' do
  end

  xit 'knows if there are floating ships' do
    # game?
  end

  xit 'knows if all ships are sunk' do
    # ain't that the role of the game?
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

  xit 'reports a missed hit if there is no ship at this position' do
  end
end
