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
    return [arr] if arr.is_a?(String)
    new_arr = []
    arr.each do |ele|
        if ele.is_a?(Array)
            deep_dup(ele)
        else
            new_arr += ele
        end
    end
    new_arr
end

p deep_dup([1, [2], [3, [4]]])