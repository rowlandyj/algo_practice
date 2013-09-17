def string_to_int_arr(string)
	arr = string.split(' ')
	arr.map! {|x| x.to_i}
end

def lowest_uniq(arr)
	uniq = arr.uniq.select { |x| arr.count(x) == 1 }.sort
	uniq.empty? ? 0 : arr.index(uniq[0]) + 1
end

def print_lowest_uniq
	File.open(ARGV[0]).each_line do |line|
		arr = string_to_int_arr(line.chomp)
		puts lowest_uniq(arr)
	end
end

puts lowest_uniq('3 3 9 1 6 5 8 1 5 3')
puts lowest_uniq('9 2 9 9 1 8 8 8 2 1 1')