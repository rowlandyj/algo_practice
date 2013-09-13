#using .to_i(16) makes this pretty trivial

def letter_to_dec(string)
	char_to_dec = {
		'a'=> 10,
		'b'=> 11,
		'c'=> 12,
		'd'=> 13,
		'e'=> 14,
		'f'=> 15
	}

	if string.to_i == 0 && string != '0'
		string = char_to_dec[string]
	else
		string = string.to_i
	end
end

def sum_hex_values(arr)
	i = arr.length - 1
	
	arr.map! do |x|
	val = letter_to_dec(x)
	val *= 16 ** i
	i -= 1
	val
	end

	arr.inject(&:+)
end

def hex_to_dec(input)
	input = input.split('')
	sum_hex_values(input)
end

def print_hex_to_dec
	File.open(ARGV[0]).each_line do |line|
		puts hex_to_dec(line.chomp)
	end
end

puts hex_to_dec("9f")
puts hex_to_dec("11")
# puts letter_to_dec('a')
# puts letter_to_dec('8')
