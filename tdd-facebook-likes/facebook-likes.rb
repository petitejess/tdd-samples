#Your code here
def facebook_likes(arr_names)
    if !arr_names.any?
        return "No one likes this"
    else
        arr_names.each { |name|
            case arr_names.length
            when 1
                return "#{name} likes this"
            when 2
                return "#{arr_names[1]} and #{name} like this"
            when 3
                return "#{arr_names[2]}, #{arr_names[1]} and #{name} like this"
            when (4...)
                return "#{arr_names[-1]}, #{arr_names[-2]} and #{arr_names.length - 2} others like this"
            end
        }
    end
end

# puts facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"])
puts facebook_likes(["Alex", "Nandini"])