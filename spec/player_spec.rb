require 'player'

describe Player do
  subject(:randall) {Player.new(name: 'Randall')}
  subject(:susan) {Player.new(name: 'Susan')}
  it 'returns the players name' do
    expect(randall.name).to eq('Randall')
  end
  it 'Randall has a default HP of 60HP' do
    # expect(subject.hit_points).to eq(60)
  end
  #it 'Susan has a default HP of 60HP' do
   # expect(subject.hit_points).to eq(60)
  #end
  #it 'reduces HP by 10' do
   # expect { subject.attack }.to change { subject.hit_points }.by(-10)
  #end
end