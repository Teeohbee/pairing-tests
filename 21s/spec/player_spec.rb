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
      player.hand << Card.new("J","Spades")
      player.hand << Card.new("6", "Diamonds")
      expect(player.calculate_score).to eql 16
    end
  end

end
