module HandValues

  def royal_flush?
    (straight? && flush?) && values.sort == (9..13).to_a 
  end 

  def straight_flush?
    straight? && flush?
  end 

  def four_of_a_kind?
    if values.each { |value| return true if values.count(value) == 4 }
    false
  end 

  def full_house?
    values.uniq.length != 2 ? false : true 
  end 

  def flush?
    suits.uniq.length == 1
  end 

  def straight?
    values.sort == (values.min..values.min+4).to_a
  end 

  def three_of_a_kind?
    if values.each { |value| return true if values.count(value) == 3 }
    false
  end 

  def two_pair?
    count = 0
    values.uniq.each do |value|
     count += 1 if values.count(value) == 2
    end 
    count == 2 ? true : false
  end 

  def pair?
    if values.each { |value| return true if values.count(value) == 2}
    false
  end 

end 