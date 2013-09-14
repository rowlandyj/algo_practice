def max_beauty(string)
	char_arr = string.downcase.gsub(/\W/,'').split('')
	char_freq = char_arr.uniq.map do |c|
		char_arr.count(c)
	end
	beauty_score = 0
	char_freq.sort.reverse.each_with_index do |x,i|
		beauty_score += x * (26-i)
	end

	return beauty_score
end

def print_max_beauty
	File.open(ARGV[0]).each_line do |line|
		puts max_beauty(line.chomp)
	end
end

print_max_beauty

puts max_beauty('Good luck in the Facebook Hacker Cup this year!')
puts max_beauty('Ignore punctuation, please :)')
puts max_beauty('ABbCcc')
puts max_beauty('Sometimes test cases are hard to make up.')
puts max_beauty('So I just go consult Professor Dalves')
