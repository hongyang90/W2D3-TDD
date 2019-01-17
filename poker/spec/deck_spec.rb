require "deck"

describe "Deck Class" do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    let(:hearts) { deck.cards.select {|card| card.suit == :heart } }
    let(:spades) { deck.cards.select {|card| card.suit == :spade } }
    let(:clubs) { deck.cards.select {|card| card.suit == :club } }
    let(:diamonds) { deck.cards.select {|card| card.suit == :diamond } }
    
    it "contains 52 cards" do
      expect(deck.cards.length).to eq(52)
    end 
    
    it "contains 13 cards of each suit" do
      allcards = [hearts.length, spades.length, clubs.length, diamonds.length]
      expect(allcards).to eq([13,13,13,13])
    end 

    it "contains unique values for each suit" do 
      num_heart_values = hearts.map{ |card| card.value}.uniq.length 
      num_spades_values = spades.map{ |card| card.value}.uniq.length 
      num_clubs_values = clubs.map{ |card| card.value}.uniq.length 
      num_diamonds_values = diamonds.map{ |card| card.value}.uniq.length 
      all_values = [num_clubs_values, num_diamonds_values, num_heart_values, num_spades_values]

      expect(all_values).to eq([13,13,13,13])
    end 


  end 

  describe "#shuffle" do 
    it "shuffles the deck of cards & returns a randomly ordered deck" do 
      original = deck.cards
      expect(deck.shuffle).to_not eq(original)
    end 
  end 


end 