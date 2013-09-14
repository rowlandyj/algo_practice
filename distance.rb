def string_to_arr(string)
	arr = string.split(/[(), ]/).select{|x| x!= '' }
	arr.map! {|x| x.to_i}
end

def distance(string)
	arr = string_to_arr(string)
	x=(arr[2]-arr[0])**2
	y=(arr[3]-arr[1])**2
	dist = ((x+y)**0.5)
	return dist.to_i
end

def print_distance
	File.open(ARGV[0]).each_line do |line|
		puts distance(line.chomp)
	end
end

puts distance("(25, 4) (1, -6)").inspect