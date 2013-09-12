def self_number?(input)
	input = input.split('')
	input.map! {|x| x.to_i }
	input.each_index do |i|
		return 0 if input[i] != input.count(i)
	end
	return 1
end

def print_self_numbers?
	File.open(ARGV[0]).each_line do |line|
		puts self_number?(line)
	end
end

# puts self_number?('2020')
# puts self_number?('22')
# puts self_number?('1210')
