def penult_word(string)
	arr = string.split(' ')
	return arr[arr.length-2]
end

def print_penult_word
	File.open(ARGV[0]).each_line do |line|
		puts penult_word(line.chomp)
	end
end

puts penult_word('some line with text')