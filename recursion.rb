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

