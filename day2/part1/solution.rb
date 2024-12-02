# the solution is 432

input_grid = File.readlines('../input.txt').map { |line| line.split.map(&:to_i) }

def safe?(nums)
  return false if nums.length < 2

  direction = nums[1] > nums[0] ? 1 : -1
  prev = nums[0]

  nums[1..].each do |num|
    diff = (num - prev) * direction
    return false unless (1..3).include?(diff)

    prev = num
  end

  true
end

total = input_grid.each.reduce(0) do |acc, nums|
  safe?(nums) ? acc + 1 : acc
end

puts total
