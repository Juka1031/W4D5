def my_min(list)
    i , j = 0 , 0
    current_smallest = 0
    while i < list.length
        while j < list.length 
            if list[i] != list[j] && list[j] < list[i]
                current_smallest = list[j]
            end
            j += 1
        end
        i += 1
    end
    current_smallest
end

def my_min(list)
    current_smallest = 0
    list.each do |ele|
        current_smallest = ele if ele < current_smallest
    end
    current_smallest
end


def largest_conti_subsum(list)
    array = []
    list.each_with_index do |ele, i| 
        list.each_with_index do |ele2, j|
            if j >= i   
                array << list[i..j]
            end
        end
    end
    array.map! {|arr| arr.sum}.max
end

def better_conti(list)
    sum = 0
    longest = 0
    list.each do |ele|
        if sum + ele > sum 
            sum = sum + ele
        else
            longest = sum if sum > longest
            sum = 0
        end
    end
    longest
end

list = [2, 3, -1, 999 , -1000, 7, -6, 7]
p better_conti(list)



