require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship }
  # let(:water) { double :water } / not needed for now. May not be needed. TBC

  it 'has the water content when created' do
    # using a string 'water' as content, may be enough to get rid/replace the water class
    expect(cell.content).to eq 'water'
  end

  it 'can hold a ship content if we place one in it' do
    cell.place_ship(ship)
    expect(cell.content).to eq ship
  end

  it 'has not been shot at when created' do
    expect(cell.been_hit).to eq false
  end

  it 'can be shot at' do
    cell.shoot!
    expect(cell.been_hit).to eq true    
  end

  it 'cannot be shot twice' do
    cell.shoot!
    expect { cell.shoot! }.to raise_error 'You already shot there Einstein!'
  end

  it 'transfers the shooting message to its content when being shot' do
    cell.place_ship(ship)
    expect(ship).to receive :hit
    cell.shoot!    
  end
end
