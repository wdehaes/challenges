class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize

    @cards =[]
    ranks = [*1..10, :jack, :queen, :king]
    suits = [:spades, :diamonds, :hearts, :clubs]

    suits.each do |suit|
      ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end  

    end

    self.shuffle

  end


  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end


deck = Deck.new()
