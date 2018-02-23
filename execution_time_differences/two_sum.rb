# O(n^2) time complexity
# O(1) space complexity
def two_sum?(arr, target)

  (0...arr.length-1).each do |idx1|
    (idx1+1...arr.length).each do |idx2|
      return true if arr[idx1] + arr[idx2] == target
    end
  end

  false

end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target)
  sorted = arr.sort
  arr
end
