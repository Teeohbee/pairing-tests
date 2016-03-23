require_relative 'card'
require_relative 'player'
require_relative 'deck'
require 'byebug'

class Game

  attr_reader :deck, :player_one, :player_two

  def initialize(player_one, player_two)
    @deck = Deck.new
    @player_one = player_one
    @player_two = player_two
  end

  def create_deck
    @deck = Deck.new.cards
  end

  def first_hand
    2.times do
      @player_one.hand << @deck.shift
      @player_two.hand << @deck.shift
    end
  end

  def blackjack?(player)
    player.calculate_score == 21
  end

end
