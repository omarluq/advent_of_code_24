# the correct answer is 18567089

require_relative '../input'

def similarity_score(arr1, arr2)
  recurrence_obj = count_recurrence(arr2)
  arr1.each.reduce(0) do |acc, v|
    acc + (v * (recurrence_obj[v] || 0))
  end
end

def count_recurrence(arr)
  arr.each_with_object({}) do |v, obj|
    obj[v].nil? ? obj[v] = 1 : obj[v] += 1
  end
end

puts similarity_score(LIST1, LIST2)
