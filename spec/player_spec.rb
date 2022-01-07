require 'player'

describe Player do
  subject(:randall) {Player.new(name: 'Randall')}
  subject(:susan) {Player.new(name: 'Susan')}
  describe "#name" do
    it 'returns the players name' do
      expect(randall.name).to eq('Randall')
    end  
  end
  describe "#hit_points" do
    it 'Randall has a default HP of 60HP' do
      expect(randall.hit_points).to eq(60)
    end
    it 'Susan has a default HP of 60HP' do
      expect(susan.hit_points).to eq(60)
    end
  end
  describe "#receive_damage" do
    it 'damages the player' do
      expect(randall).to receive(:receive_damage)
      susan.attack(randall)
    end
  end
  describe "attack" do
    it 'reduces player 2 HP by 10' do
      expect { randall.attack(susan) }.to change { susan.hit_points }.by(-10)
    end
    it 'reduces player 1 HP by 10' do
    expect { susan.attack(randall) }.to change { randall.hit_points }.by(-10)
    end
  end

end