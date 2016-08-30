require 'spec_helper'

RSpec.describe BTreeSort, type: :model do
  describe 'btree sort should work' do
    it 'should order the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BTreeSort.sort(array)).to eq expected
    end

    it 'should order arrays with duplicate values' do
      expected = [1,2,2,2,4]
      array = [2,4,2,1,2]
      expect(BTreeSort.sort(array)).to eq expected
    end

    it 'should not crash on empty arrays' do
      expect(BTreeSort.sort([])).to eq [] 
    end

    it 'should give an error on an array with non-numeric elements' do
      array = ['a', false, 12]
      expect {BTreeSort.sort(array)}.to raise_error(ArgumentError)     
    end

  end
end