require 'game'

describe Game do

  describe "new game" do
    it "creates a new deck of cards" do
      subject.create_deck
      expect(subject.deck.count).to eql 52
    end
  end

end
