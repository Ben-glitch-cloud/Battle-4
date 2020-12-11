require 'players.rb'

describe Player do
    it 'return a player name' do
        player = Player.new("Ben") 
        expect(player.name).to eq("Ben")
    end
end