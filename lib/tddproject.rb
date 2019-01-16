class Array

  def my_uniq
    result = []
    self.each do |ele|
      result.push(ele) unless result.include?(ele)
    end
    result
  end 

  def two_sum
    result = []
    self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        if j > i && el1+el2 == 0
          result << [i, j]
        end
      end 
    end
    result
  end

  def my_transpose
    result = Array.new(self.length) {Array.new(self[0].length)}
    self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        result[i][j] = self[j][i]
      end 
    end 
    result
  end 

  def stock_picker
     max_diff = 0
     max_pair = nil
     self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        if j > i && (el2 - el1 > max_diff)
          max_diff = el2 - el1 
          max_pair = [i+1, j+1]
        end 
      end
    end
     max_pair
  end

end 


class Game
  attr_reader :towers
  def initialize
    @towers = [[3,2,1],[],[]]
  end 

end 