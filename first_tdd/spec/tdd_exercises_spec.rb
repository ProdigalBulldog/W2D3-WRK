require 'rspec'
require 'tdd_exercises'

describe '#my_uniq' do
  let(:arr) {[1, 2, 1, 3, 3]}
  let(:post_op_arr) {my_uniq(arr.dup)}
  
  it 'should remove duplicates from an array' do
    arr.each do |item|
      expect(post_op_arr.count(item)).to eq(1)
    end
  end
  
  it 'should return a new array' do
    expect(arr).to_not be post_op_arr
  end
  
  it 'should not change the original array' do
    expect { my_uniq(arr) }.to_not change{arr}
  end
end

describe 'Array#two_sum' do
  let(:arr) {[-1, 0, 2, -2, 1]}
  let(:two_sum_return) {arr.two_sum}
  
  it 'should return index pairs whose elements sum to zero' do
    two_sum_return.each do |pair|
      i = pair[0]
      j = pair[1]
      expect(arr[i] + arr[j]).to eq(0)
    end
  end
  
  it 'should organize returned index pairs sorted by first index, then second index (dictionary style)' do
    two_sum_return.each_with_index do |pair, idx|
      next if idx == 0
      prev_el1 = pair[idx - 1][0]
      prev_el2 = pair[idx - 1][1]
      curr_el1 = pair[idx][0]
      curr_el2 = pair[idx][1]
      
      expect(prev_el1).to be <= curr_el1
      expect(prev_el2).to be <= curr_el2 if prev_el1 == curr_el1
    end
  end
end