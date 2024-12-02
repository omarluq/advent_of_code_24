# the solution is 488

require_relative '../part1/solution'

def valid_with_dampener?(nums)
  diffs = differences(nums)
  return true if safe?(diffs)

  (0...diffs.size).any? { |pos| safe?(diffs[0...pos] + diffs[pos + 1..]) }
end

def calc_safe_sequences_count(grid) = grid.count(&method(:valid_with_dampener?))

puts calc_safe_sequences_count(INPUT_GRID)

