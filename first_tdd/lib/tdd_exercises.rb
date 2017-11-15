def my_uniq(ary)
  unique_values = []
  ary.each do |item|
    unique_values << item unless unique_values.include?(item)
  end
  unique_values
end

class Array
  def two_sum
    index_pair_array = []
    first_nums = self.dup
    first_nums.pop
    
    first_nums.each_with_index do |num1, idx1|
      (idx1 + 1).upto(self.length - 1) do |idx2|
        num2 = self[idx2]
        index_pair_array << [idx1, idx2] if num1 + num2 == 0
      end
    end
    index_pair_array
  end
end