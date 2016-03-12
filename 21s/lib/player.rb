class Player
attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def calculate_score
    sum = 0
    @hand.each do |card|
      if card.rank == "J" || card.rank == "Q" || card.rank == "K"
        sum += 10
      elsif card.rank == "A"
        sum += 11
      else
        sum += card.rank.to_i
      end
    end
    sum
  end

end
