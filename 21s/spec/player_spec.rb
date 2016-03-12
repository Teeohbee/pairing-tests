require 'game'

describe Player do

  it "has a name" do
    player = Player.new("Toby")
    expect(player).to have_attributes(name: "Toby")
  end

end
