def sum_digits
	File.open(ARGV[0]).each_line do |line|
		input = line.split('').map { |x| x.to_i }
		puts input.inject(&:+)
	end
end

sum_digits