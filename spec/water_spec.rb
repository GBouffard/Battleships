require 'water'

describe Water do
  it 'can be hit (and it\'s a miss)' do
    expect(subject.hit).to eq 'Miss'
  end
end
