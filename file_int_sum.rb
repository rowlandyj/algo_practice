def file_int_sum
	sum = 0
	File.open(ARGV[0]).each_line do |line|
		sum += line.to_i
	end

	return sum
end

puts file_int_sum