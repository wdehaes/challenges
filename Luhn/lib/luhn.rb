module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
  sum = 0 
  ary = number.to_s.split("").reverse
  ary.each_with_index do |n, i|
    n = n.to_i
    # puts n
    # puts "------------"
    if i > 0 and i.odd?
      n = 2 * n
      if n >= 10 
        n = n - 9
      end
    end
    sum = sum + n 
    # puts "++++++++++++++"
  end
  sum%10 == 0
  end
end