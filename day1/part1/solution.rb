# the solution is 2000468

require_relative '../input'

def total_distance(arr1, arr2)
  sorted1 = to_sorted_hash(arr1)
  sorted2 = to_sorted_hash(arr2)
  sorted1.each.reduce(0) do |acc, (k, v)|
    acc + (v - sorted2[k]).abs
  end
end


def to_sorted_hash(arr) = arr.sort.map.with_index { |val, index| [index, val] }.to_h

puts total_distance(LIST1, LIST2)
