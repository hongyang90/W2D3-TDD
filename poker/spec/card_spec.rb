require 'card'
describe "Card Class" do 
  subject(:card) {Card.new(1, :heart)}
  describe "#initialize" do 
    it "sets the value of the card" do
      expect(card.value).to eq(1)
    end
    it "sets the suit of the card" do
      expect(card.suit).to eq(:heart)
    end

    context "with invalid arguments" do
      it "raises an error when the value is not between 1 and 13" do 
        expect { Card.new(0, :heart)}.to raise_error(ArgumentError)
      end

      it "raises an error when the suit is not :heart, :club, :spade, or :diamond" do 
        expect { Card.new(2, :circle)}.to raise_error(ArgumentError)
      end
    end
end
end