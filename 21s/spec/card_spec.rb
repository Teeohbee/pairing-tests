require 'game'

describe Card do

  it "has a rank and suit" do |variable|
    card = Card.new("A", :spade)
    expect(card).to have_attributes(:rank => "A", :suit => :spade)
  end

  it "returns an array of possible ranks" do
    expect(Card.ranks).to eql ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  end

  it "returns an array of possible suits" do
    expect(Card.suits).to eql ["Spades", "Hearts", "Diamonds", "Clubs"]
  end

  it "should have a value of ten for face cards" do
    facecards = ["J", "Q", "K"]
    facecards.each do |facecard|
      card = Card.new(facecard, :spade)
      card.value.should eq(10)
    end
  end

end
