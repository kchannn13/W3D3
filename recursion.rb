require 'byebug'

def range(num1, num2)
    return [] if num2 <= num1

    range(num1, num2 - 1) + [num2 - 1]
end

# p range(1, 5)

def exp(b, n)
    return 1 if n == 0
    return b if n == 1

    b * exp(b, n-1)
end

# p exp(0,0)
# p exp(0,1)
# p exp(1,0)
# p exp(1,2)
# p exp(2,0)
# p exp(2,1)
# p exp(2,2)

def deep_dup(arr)
    # return [arr] if arr.is_a?(String) 
    # new_arr = []
    arr.map do |ele|
        if !ele.is_a?(Array)
            ele
        else
            deep_dup(ele)
        end
    end

end

# a =[1, [2], [3, [4]]]
# a_copy = deep_dup(a)
# a_copy_2 = a.dup
# a_copy[1] << 6
# a_copy_2[1] << 8
# p a
# p a_copy
# p a_copy_2

def fibonacci(n)
    return [0, 1].take(n) if n <= 2
    
    prev_arr = fibonacci(n-1)
    prev_arr << prev_arr[-1] + prev_arr[-2]
end

# p fibonacci(5)

def bsearch(array, target)
    return nil if !array.include?(target)

    mid_idx = array.length / 2
    left = (0...mid_idx)
    right = (mid_idx+1..-1)

    if array[mid_idx] == target
        return mid_idx
    elsif array[mid_idx] < target
        1 + mid_idx + bsearch(array[right], target)
    else
        bsearch(array[left], target)
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(array)
    # return array if array.length <= 1

    # half = array.length / 2
    # first_half = array[0...half]
    # second_half = array[half..-1]
end