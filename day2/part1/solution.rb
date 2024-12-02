# the solution is 432

INPUT_GRID = File.readlines('../input.txt').map { |line| line.split.map(&:to_i) }

def safe?(diff)
  return false if diff.empty?

  direction = diff[0].positive? ? 1 : -1
  diff.map { |d| d * direction }.all? { |d| (1..3).include?(d) }
end

def differences(nums) = nums.each_cons(2).map { |x, y| y - x }


def sequence_safe?(nums) = safe?(differences(nums))


def calc_safe_sequences_count(grid) = grid.count(&method(:sequence_safe?))

puts calc_safe_sequences_count(INPUT_GRID)
