def found_in_array(names, name)
    names.include?(name.downcase) ? "Found in array" : "Not found in array"
end