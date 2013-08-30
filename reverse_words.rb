def reverse_words
	File.open(ARGV[0]).each_line do |line|
		sentence = line.split
		puts sentence.reverse.join(' ')
	end
end

# def reverse_words(string)
# 	sentence = string.split
# 	puts sentence.reverse.join(' ').inspect
# end

# reverse_words("I really hope this works")

reverse_words