require 'hand'

describe "Hand Class" do 
  subject(:hand) { Hand.new }
  describe "#initialize" do 
    it "initializes to an empty array" do 
      expect(hand.cards).to eq([])
    end    
  end
end