at i = 0
total << perm[0...0] + [2] + perm[0..-1]
total << [] + [2] + [3]
-------------------------------------------
at i = 1
total << perm[0...1] + [2] + perm[1..-1]
total << [3] + [2] + [] 
-------------------------------------------
total = [[2,3], [3,2]]


[1,2,3]
first = array.shift == 1
perms = permutations([2,3]) 

first_1 = array.shift == 2 
perms_1 = permutations([3]) => [[3]]


STARTING AT:

first_1 = array.shift == 2 
perms_1 = permutations([3]) => [[3]]

first = array.shift == 1
perms = permutations([2,3]) => [[2,3], [3,2]]


def permutations(array)
  return [array] if array.length <= 1 

  first = array.shift 

  perms = permutations(array) 
  total = []

  perms.each do |perm| 
    (0..perm.length).each do |i| 
      total << perm[0 ... i] + [first] + perm[i .. -1] 
    end
  end
  total
end