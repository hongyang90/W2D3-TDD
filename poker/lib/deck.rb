require_relative "card"

class Deck
  SUITS = [:heart, :spade, :club, :diamond]
  attr_reader :cards

  def initialize
    @cards = populate
  end 

  def populate
    result = []
    SUITS.each do |suit|
      (1..13).each do |num|
        result.push( Card.new(num, suit))
      end 
    end 
    result
  end 

  def shuffle
    cards.shuffle
  end 



end