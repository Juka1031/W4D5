def two_sum?(arr,target) #O(n^2)
    pairs = []
    arr.each_with_index do |el1,idx1|
        arr.each_with_index do |el2,idx2|
            pairs << [el1,el2] if idx1 < idx2
        end
    end
    pairs.one?{|pair| pair.sum == target}
end


def okay_two_sum?(arr,target)
    arr.sort!
    i = 0
    j = arr.length-1 #j last ele
    while i < j
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

arr = [0,1,5,7]
p okay_two_sum?(arr,10)