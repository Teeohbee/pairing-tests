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
