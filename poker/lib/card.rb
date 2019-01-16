class Card
  SUITS = [:heart, :spade, :club, :diamond]
  attr_reader :value, :suit
  def initialize(value, suit)
    raise ArgumentError.new("invalid suit or value") unless (1..13).include?(value) || SUITS.include?(suit)
    @value = value
    @suit = suit
  end
end