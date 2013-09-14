def even?(num)
	num % 2==0 ? 1 : 0
end

def print_even
	File.open(ARGV[0]).each_line do |line|
		puts even?(line.chomp.to_i)
	end
end

puts even?(2)
puts even?(10)
puts even?(3)

