require 'game'

describe Card do

  it "has a rank and suit" do |variable|
    person = Card.new("A", :spade)
    expect(person).to have_attributes(:rank => "A", :suit => :spade)
  end

  it "returns an array of possible ranks" do
    expect(Card.ranks).to eql ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  end

  it "returns an array of possible suits" do
    expect(Card.suits).to eql ["Spades", "Hearts", "Diamonds", "Clubs"]
  end

end
