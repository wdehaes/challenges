module LongestSubsequence

	def self.find(first, second)
    first_ary = first.chars
    (0..first_ary.length-1).reverse_each do |start_chr|
      (0..first_ary.length- start_chr -1).reverse_each do |end_chr|
        current = first_ary.slice(start_chr, end_chr)
         second.each do |second_chr|
           if  
         end
      end
    end

	end

end
