def armstrong_num?(input)
	i = input.to_i
	input = input.split('').map {|x| x.to_i }
	n = input.length
	val = input.inject(0) {|sum,x| sum+= x**n }
	val == i ? "True": "False"
end

def print_armstrong_nums
	File.open(ARGV[0]).each_line do |line|
		puts armstrong_num?(line.chomp)
	end
end

# print_armstrong_nums

puts armstrong_num?('153')