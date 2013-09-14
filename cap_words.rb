#one can just use .capitalize for each word

def cap_words(string)
	word_arr = string.split(' ')
	word_arr.map! do |word|
		word.sub(word[0],word[0].upcase)
	end
	word_arr.join(' ')
end

def print_cap_words
	File.open(ARGV[0]).each_line do |line|
		puts cap_words(line.chomp)
	end
end

puts cap_words('blah test work Plz')