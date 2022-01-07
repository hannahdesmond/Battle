require 'game'

describe Game do
  let(:susan) { double :susan, receive_damage: true}
  let(:randall) { double :randall, receive_damage: true}
  let(:game) { described_class.new(randall, susan) }
  it 'initializes with two players' do
    expect(game.player_one).to eq(randall)
  end
  describe "attack" do
    it 'damages the player' do
      expect(randall).to receive(:receive_damage)
      game.attack(randall)
    end
  end  
end
