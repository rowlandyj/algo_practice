def line_to_arr(input)
	input=input.chomp.split(',')
	input.map! { |x| x.to_i }
end

def mod(input)
	arr = line_to_arr(input)
	n = arr[0]
	m = arr[1]

	multiplier = n/m
	remainder = n - m*multiplier

	return remainder
end

def print_mod
	File.open(ARGV[0]).each_line do |line|
		puts mod(line)
	end
end

puts mod('20,6')
puts mod('2,3')
