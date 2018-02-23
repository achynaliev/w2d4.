# O(n^2) time complexity
# O(1) space complexity
def my_min(arr)
  arr.each_with_index do |el1, idx1|
    smallest = true
    arr.each_with_index do |el2, idx2|
      if idx1 != idx2
        smallest = false if el2 < el1
      end
    end
    return el1 if smallest
  end
end

# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])


#O(n) time complexity
#O(1) space complexity
def my_min1(arr)
  smallest = arr[0]
  i = 1
  while i < arr.length
    smallest = arr[i] if smallest > arr[i]
    i += 1
  end
  smallest
end

# p my_min1([ 0, 3, 5, 4, -5, 10, 1, 90 ])



# time complexity larger than O(n^2)
# space complexity O(2^n)
def largest_contiguous_subsum(list)
  subs = []
  i = 0
  while i < list.length
    j = i + 1
    subs << [list[i]]
    while j < list.length
      subs << list[i..j]
      j += 1
    end
    i += 1
  end

  result = []
  subs.each do |el|
    result << el.reduce(:+)
  end
  result.max
end
#list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8
#
# list = [2, 3, -6, 7, -6, 7, 9]
# p largest_contiguous_subsum(list)
#
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])



# time complexity O(n)
# space complexity O(1)
def largest_contiguous_subsum1(arr)
  cur_sum = arr[0]
  max = arr[0]
  i = 1
  while i < arr.length
    cur_sum += arr[i]
    #cur_sum = arr[i] if cur_sum > max
    if cur_sum < arr[i]
      cur_sum = arr[i]
    end
    max = cur_sum if cur_sum > max
    i += 1
  end

  max
end


list = [5, 3, -7]
p largest_contiguous_subsum1(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum1(list)

list = [-5, -1, -3]
p largest_contiguous_subsum1(list) # => -1 (from [-1])
