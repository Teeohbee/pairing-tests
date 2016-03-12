require_relative 'card'
require_relative 'player'

class Game

  attr_reader :deck

  def initialize(player_one, player_two)
    @deck = []
    @player_one = player_one
    @player_two = player_two
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
