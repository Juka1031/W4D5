def first_anagram?(str, target)  # O(N!)
    return false if str.length != target.length
    words = str.split("") 
    substrings = permutations(words)

    substrings.include?(target.split(""))
end


def permutations(array) # => [3] 
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


def second_anagram?(str, target) # O(N ^ 2)
    return false if str.length != target.length 
    words = target.split("")
    str.each_char do |char| # => O(N^2)
        if words.include?(char)                # 0(N)
            target_index = words.index(char)   # O(log n)
            words.delete_at(target_index)      # 0(N)
        else
            return false
        end
    end

    words.length == 0
end


def third_anagram?(str, target) #O(N log n) ??
    sort_str = str.split("").sort   
    target_sort = target.split("").sort 

    target_sort == sort_str # 0(1)
end

def fourth_anagram?(str, target) # => 0(N)
    str_hash = Hash.new(0)      # 0(1)  
    target_hash = Hash.new(0)   # 0(1)

    str.each_char do |char|     #O(N)
        str[char] += 1
    end

    target.each_char do |char|  #O(N)
        target[char] += 1
    end

    str_hash == target_hash     #O(N) ??
end

def bonus_anagram?(str, target) # => O(N)
    target_hash = Hash.new(0)   #O(1)

    target.each_char do |char|  #O(N)
        target_hash[char] += 1
    end

    str.each_char do |char|     #O(N)
        target_hash[char] -= 1 if target_hash.has_key?(char) #O(1)
    end

    target_hash.values.all? {|value| value == 0}    #O(N)
    
end



