require 'spec_helper'

RSpec.describe LongestSubsequence, type: :module do
  describe "LongestSubsequence#find" do
    
    it "should result in nil when given nil" do
      longest = LongestSubsequence.find(nil, nil)
      expect(longest).to eq nil
    end
    
    it "should result in nil when given no common subsequences" do
      longest = LongestSubsequence.find("a", "b")
      expect(longest).to eq nil
    end
    
    it "should return the longest subsequence when given a short string" do
      longest = LongestSubsequence.find("ABCDAF", "ACBCF")
      expect(longest.chars.sort.join).to eq "ABCF"
    end
    
  end
end
