require 'player'

describe Player do
  it 'returns the name of the class' do
    expect(subject.return_name).to eq('Player')
  end
end