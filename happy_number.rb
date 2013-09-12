def happy_num(input)
	input = input.split('')
	input.map! {|x| (x.to_i)**2 }
	return input.inject(&:+)
end

def happy_num?(input)

	num = happy_num(input)
	prev = [num]

	while !prev.include?(1)
		num = happy_num(num.to_s)
		return 0 if prev.include?(num)
		prev << num
	end

	return num
end

def print_happy_nums?
	File.open(ARGV[0]).each_line do |line|
		puts happy_num?(line)
	end
end

puts happy_num?("1")
puts happy_num?("7")
puts happy_num?("22")
puts happy_num?("49")
puts happy_num?("10")
puts happy_num?("8")


