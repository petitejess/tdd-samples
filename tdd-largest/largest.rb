def largest(values)
    largest_val = values[0]
    values.each do |val| 
        if (val > largest_val)
            largest_val = val
        end
    end
    return largest_val
end