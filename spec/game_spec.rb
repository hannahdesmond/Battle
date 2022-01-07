require 'game'

describe Game do
  describe "attack" do
    let(:susan) { double :susan, hit_points: 60, receive_damage: true}
    let(:randall) { double :randall, hit_points: 60, receive_damage: true}
    it 'damages the player' do
      expect(randall).to receive(:receive_damage)
      subject.attack(randall)
    end
  end  
end
