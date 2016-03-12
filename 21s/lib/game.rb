require 'card'
require 'player'

class Game

  attr_reader :deck

  def initialize
    @deck = []
  end

  def create_deck
    ranks = Card.ranks
    suits = Card.suits
    suits.each do |suit|
      ranks.size.times do |i|
        @deck << Card.new( ranks[i], suit)
      end
    end
  end
end
