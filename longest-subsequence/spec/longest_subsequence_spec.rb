require 'spec_helper'

RSpec.describe LongestSubsequence, type: :module do
  describe "LongestSubsequence#find" do
    
    it "should result in nil when given nil" do
      longest = LongestSubsequence.find(nil, nil)
      expect(longest).to eq nil
    end

    it "should result in nil when either string nil" do
      longest1 = LongestSubsequence.find(nil, "foo")
      longest2 = LongestSubsequence.find("foo", nil)
      expect(longest1).to eq nil
      expect(longest2).to eq nil
    end
    
    it "should result in nil when given no common subsequences" do
      longest = LongestSubsequence.find("a", "b")
      expect(longest).to eq nil
    end
    
    it "should return the longest subsequence when given a short string" do
      longest = LongestSubsequence.find("ABCDAF", "ACBCF")
      expect(longest.chars.sort.join).to eq "ABCF"
    end

    it "should returb substring" do
      longest = LongestSubsequence.find("ABCDE", "ADBCD")
      expect(longest.chars.sort.join).to eq("ABCD")
    end

    it "should return the longest possible subsequence" do
      longest = LongestSubsequence.find("ABCDAFGHIJK", "ABFGHIJK")
      expect(longest.chars.sort.join).to eq "ABFGHIJK"
    end

    it "when the only commonality is at the end of the strings" do
      longest = LongestSubsequence.find("ZXYJKLMNOP", "ABCDEFGMNOP")
      expect(longest.chars.sort.join).to eq "MNOP"
    end
  end
end
