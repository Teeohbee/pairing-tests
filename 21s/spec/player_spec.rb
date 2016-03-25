require 'game'

describe Player do

  it "has a name" do
    player = Player.new("Toby")
    expect(player).to have_attributes(name: "Toby")
  end

  it "starts with an empty hand" do
    player = Player.new("Toby")
    expect(player.hand).to eql []
  end

  describe "hit" do
    it "should add a card to the players hand" do
      player = Player.new("Toby")
      deck = instance_double("Deck", :cards => [1,2,3,4])
      expect{player.hit(deck)}.to change{player.hand.count}.by(1)
    end

    it "adds the card from the top of the deck to the players hand" do
      player = Player.new("Toby")
      deck = instance_double("Deck", :cards => [1,2,3,4])
      player.hit(deck)
      expect(player.hand).to eql [1]
    end
  end

  describe "hand_score" do
    it "calculates the score of your hand" do
      player = Player.new("Toby")
      card_one = instance_double "Card", rank: "J", suit: "Spades", value: 10
      card_two = instance_double "Card", rank: "6", suit: "Diamonds", value: 6
      player.hand << card_one
      player.hand << card_two
      expect(player.calculate_score).to eql 16
    end
  end

end
