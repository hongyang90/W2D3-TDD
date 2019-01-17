class Hand
  include hand_values
  attr_reader :cards
  ranking = [:royal_flush, :straight_flush, :four, 
  :full_house, :flush, :straight, :three, :two_pair, :pair]
  def initialize
    @cards = []
  end

  def pair?
    
  end

  def check_hand
    return :royal_flush if royal_flush?
    return :straight_flush if straight_flush?
    return :four if four_of_a_kind?
    return :full_house if full_house?
    return :flush if flush?
    return :straight if straight?
    return :three if three_of_a_kind?
    return :two_pair if two_pair?
    return :pair if pair?
    return values.max
  end

  def values
    cards.map {|card| card.value}
  end 

  def suits
    cards.map {|card| card.suit}
  end
end