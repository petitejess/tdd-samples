# Your code here
# Part 1
def sum_array(array_of_numbers)
    array_of_numbers.reduce(:+).to_i
end

# Part 2
def sum_two_arrays(arr1, arr2)
    sum_array(arr1) + sum_array(arr2)
end