
#Phase I
#O(n!) time complexity
#0(n!) space complexity
def anagram?(str1, str2)
  perms = str1.chars.permutation.to_a
  perms.map! { |perm| perm.join }
  perms.include?(str2)
end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true


#Phase II
#Time complexity is less than Phase I
#O(n)to O(n^2) time complexity
#Space complexity constant
def second_anagram?(str1, str2)
  i = 0

  len = str1.length

  i = 0
  while i < len
    letter = str1[0]
    str1.delete!(letter)
    str2.delete!(letter)
    i += 1
  end
  p str1
  p str2

  str1.empty? && str2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true


#Phase III
#Worst is O(n^2) at worst or O(n(logn)) at best
def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true


#Phase IV
# time complexity O(n)
# space complexity O(n)
def fourth_anagram(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  i = 0
  while i < str1.length
    hash1[str1[i]] += 1
    hash2[str2[i]] += 1
    i += 1
  end

  hash1 == hash2
end

p fourth_anagram("gizmo", "sally")    #=> false
p fourth_anagram("elvis", "lives")    #=> true
