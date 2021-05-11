def smallest(arr)
    smallest_val = arr[0]
    arr.each { |n|
        smallest_val = n if n < smallest_val
    }
    return smallest_val
end