require "tddproject"

describe "#my_uniq" do
  it "returns a new array" do
    array = [1,2,3]
    expect(array.my_uniq).to_not be(array)
  end 

  it "returns an array without duplicates" do
    array = [1,2,1,3,3]
    expect(array.my_uniq).to eq([1,2,3])
  end  
end 

describe "#two_sum" do
  subject(:arr) { [-1, 0, 2, -2, 1] }
  context "with valid pairs" do 
    it "returns a nested array of all valid pairs" do 
      expect(arr.two_sum).to eq([[0,4], [2,3]])
    end

    it "returns no duplicate index pairs" do 
      expect(arr.two_sum).to_not include([4,0] || [3,2])
    end
  end

  context "with no pairs" do 
    subject(:arr) { [1,2,3,4,5] }
    it "should return an empty array" do 
      expect(arr.two_sum).to eq([])
    end
  end
end


describe "#my_transpose" do
  subject(:matrix) do 
    [ [0,1,2],
      [3,4,5],
      [6,7,8]
    ]
  end 

  it "returns a transposed matrix" do 
    transposed = [[0,3,6],[1,4,7],[2,5,8]]
    expect(matrix.my_transpose).to eq(transposed)
  end 

end

describe "#stock_picker" do 
  context "you can sell stock for a profit" do
    subject(:stocks) { [6, 2, 6, 3, 20, 11]}
    it "returns the pair of days with the maximum profit" do 
      expect(stocks.stock_picker).to eq([2, 5])
    end
  end

  context "don't invest - stocks only decrease" do 
    stocks = [6, 5, 4, 3]
    it "returns nil" do
      expect(stocks.stock_picker).to be_nil
    end
  end
end

describe "Towers Game" do
  subject(:game) { Game.new }
  
  describe "#initialize" do 
    it "Creates a towers array" do
      expect(game.towers).to eq([[3,2,1],[],[]])
    end 
  end 

end 