require 'game'

describe Deck do

  describe "create_deck" do
    it "creates a new deck of cards" do
      player = double :player
      game = Game.new(player, player)
      game.create_deck
      expect(game.deck.count).to eql 52
    end
  end


  it "should build 52 cards" do
    expect(Deck.build_cards.length).to eql(52)
  end

  it "should have 52 cards when new deck" do
    expect(Deck.new.cards.length).to eql(52)
  end

end
