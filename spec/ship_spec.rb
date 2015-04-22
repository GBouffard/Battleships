require 'ship'

describe Ship do
  let(:ship) { Ship.new(3) }

  it 'has a size' do
    expect(ship.size).to eq(3)
  end

  it 'is floating when created' do
    expect(ship.floating).to be true
  end

  it 'can be hit' do
    ship.hit
    expect(ship.hits_left).to eq 2
  end

  it 'can be sunk' do
    3.times { ship.hit }
    expect(ship.floating).to be false
  end
end
