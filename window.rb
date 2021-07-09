def windowed_max_range(arr,w)
    current_max_range = nil
    (0..arr.length-w).each do |i|         #O(N)
        max_range = arr[i+w-1]            #O(1)
        min_range = arr[i]                #O(1)
        if current_max_range.nil?         #O(1)
            current_max_range = max_range - min_range
        else
            current_max_range = max_range - min_range if max_range - min_range > current_max_range
        end
    end
    current_max_range
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8 
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 5 # 3, 2, 5, 4, 8

class Array 
    def enqueue
        self.push
    end

    def dequeue
        self.shift
    end

    def peek 
        self[0]
    end
end


class MyQueue
  def initialize
    @store = []
  end

  def enqueue
    @store.push
  end

  def dequeue
    @store.shift
  end

  def peek 
    @store[0]
  end

  def size 
    @store.length
  end

  def empty?
    @store.empty?
  end
end


class MyStack
  def initialize
    @stack = []
  end

  def enqueue
    @stack.push
  end

  def dequeue
    @stack.pop
  end

  def empty?
    @stack.empty? 
  end

  def peek 
    @stack[-1]
  end

end

# arr = [1, 3] @store.length = 5

# stacked = [8, 4, 5, 2, 3].push(arr.pop)

# stacked =[8,4,5,2,3]

# stacked.enqueue(stacked.dequeue)







