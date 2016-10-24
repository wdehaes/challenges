module LongestSubsequence
  def self.find(first, second)
    if ([first, second].include? nil)
      return nil
    end
    if (first == second)
      return first
    end
    if (first[-1] == second[-1])
      return ((LongestSubsequence.find(first[0..-2], second[0..-2]) || "") + first[-1])
    end
    temp_first = first
    temp_second = second.chars
    longest_substring = ""
    current_substring = ""
    # temp_first.inject .....
    (0..(temp_first.length-1)).each do |outer_index|
      first.chars.each.with_index do |char, index|
        if (temp_second.include? char)
          current_substring += char
          temp_second = temp_second[(temp_second.index(char))..-1]
        end
        if (index == (temp_first.length-1) || temp_second == nil)
          longest_substring = (current_substring.length > longest_substring.length) ? current_substring : longest_substring
          current_substring = ""
          temp_second = second.chars
        end
      end
      first = first[1..-1]
    end
    (longest_substring == "") ? nil : longest_substring
  end
end
