def range(num1, num2)
    return [] if num2 <= num1

    range(num1, num2 - 1) + [num2 - 1]
end

p range(1, 5)