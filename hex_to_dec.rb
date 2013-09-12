#using .to_i(16) makes this pretty trivial

def hex_to_dec(input)
	input = input.split('')
end

def print_hex_to_dec
	File.open(ARGV[0]).each_line do |line|
		puts hex_to_dec(line)
	end
end

puts hex_to_dec("9f")
puts hex_to_dec("11")
