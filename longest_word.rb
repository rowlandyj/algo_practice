def longest_word(string)
	sentence = string.split(' ')
	sentence.map {|x,y| x,y=y,x if x.length < y.length }
end

def print_longest_word
	File.open(ARGV[0]).each_line do |line|
		puts longest_word
	end
end

puts longest_word('some line with text')
puts longest_word('another line')