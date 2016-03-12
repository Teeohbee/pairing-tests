require 'game'

describe Game do

  describe "new game" do
    it "creates a new deck of cards" do
      player = double :player
      game = Game.new(player, player)
      game.create_deck
      expect(game.deck.count).to eql 52
    end
  end

end
