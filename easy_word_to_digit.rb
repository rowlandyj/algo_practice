def word_to_digit(string)
	dict = { 'zero'=> 0,
					 'one'=>  1,
					 'two'=>  2, 
					 'three'=>3,
					 'four'=> 4,
					 'five'=> 5,
					 'six'=>  6,
					 'seven'=>7,
					 'eight'=>8,
					 'nine'=> 9  }
	number_list=string.split(';')
	out = ""
	number_list.each {|x| out << dict[x].to_s }
	return out
end

def print_word_to_digit
	File.open(ARGV[0]).each_line do |line|
		puts word_to_digit(line.chomp)
	end
end

puts word_to_digit('zero;two;five;seven;eight;four')