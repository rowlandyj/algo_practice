def split_semicolon(str)
	arr1, arr2 = str.split(';').map do |x|
		x.split(',').map! {|i| i.to_i}
	end
	return arr1, arr2
end

def intersection(str)
	arr1, arr2 = split_semicolon(str)
	int = (arr1 & arr2)
	int.empty? ? "\n" : int.join(',')
end

def print_intersection
	File.open(ARGV[0]).each_line do |line|
		puts intersection(line)
	end
end

# print_intersection

puts intersection("1,2,3,4;1,2,5")
puts intersection("123;1")
puts intersection("1,2,4;4,4,5")
