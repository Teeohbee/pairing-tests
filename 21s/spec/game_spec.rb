require 'game'

describe Game do

  describe "create_deck" do
    it "creates a new deck of cards" do
      player = double :player
      game = Game.new(player, player)
      game.create_deck
      expect(game.deck.count).to eql 52
    end
  end

  describe "first_hand" do
    it "deals out two cards to each player" do
      player = double :player
      allow(player).to receive(:hand) { [] }
      game = Game.new(player, player)
      game.create_deck
      game.first_hand
      expect(game.deck.count).to eql 48
    end
  end

end
