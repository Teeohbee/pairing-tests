class Card
  attr_reader :rank, :suit

  def self.ranks
    %w{A 2 3 4 5 6 7 8 9 10 J Q K}
  end

  def self.suits
    %w{Spades Hearts Diamonds Clubs}
  end

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
