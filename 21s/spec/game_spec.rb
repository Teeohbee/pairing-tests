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

  describe "blackjack?" do
    it "confirms a win scenario" do
      player = double :player
      winning_player = double :player
      allow(player).to receive(:hand) { [] }
      allow(winning_player).to receive(:hand) { [] }
      allow(winning_player).to receive(:calculate_score) { 21 }
      game = Game.new(player, winning_player)
      game.create_deck
      game.first_hand
      expect(game.blackjack?(winning_player)).to eql true
    end
  end

end
