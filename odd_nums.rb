def print_odd_nums(max)
    1.upto(max) do |e|
        if e % 2 != 0
            puts e
        end 
    end
end

print_odd_nums(99)