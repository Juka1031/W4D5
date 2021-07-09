def two_sum?(arr,target) #O(n^2)
    pairs = []
    arr.each_with_index do |el1,idx1|
        arr.each_with_index do |el2,idx2|
            pairs << [el1,el2] if idx1 < idx2
        end
    end
    pairs.one?{|pair| pair.sum == target} # 0(1)
end


def okay_two_sum?(arr,target)
    arr.sort!                           # 0(N log n)                          
    i = 0
    j = arr.length-1 #j last ele
    while i < j                         # while loop itself is O(N)
        if arr[i] + arr[j] == target        
            return true 
        elsif arr[i] + arr[j] > target
            j -= 1
        elsif arr[i] + arr[j] < target
            i+=1
        end
    end
    false
end

def hash_two_sum?(arr, target)
    pairs = Hash.new {|h,k| h[k] = 0}

    arr.each {|ele| pairs[ele] += (target-ele)}         # 0(N)

    pairs.values.any? {|value| pairs.has_key?(value) }  # 0(N)
end



