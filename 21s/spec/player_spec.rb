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

end
