require 'game'

describe Game do

  describe "initialize" do
    it "deals out two cards to each player" do
      toby = Player.new("Toby")
      dealer = Player.new("Dealer")
      game = Game.new(toby, dealer)
      expect(game.deck.cards.count).to eql 48
    end
  end

  describe "blackjack?" do
    it "confirms a win scenario" do
      player = double :player
      winning_player = double :player
      allow(player).to receive(:hit)
      allow(winning_player).to receive(:hit)
      allow(winning_player).to receive(:calculate_score) { 21 }
      game = Game.new(player, winning_player)
      expect(game.blackjack?(winning_player)).to eql true
    end
  end

end
