def prepare_string(string)
	string = string.downcase.gsub(/\W/,'')
	string.split('')
end

def assign_char_values(arr)
	char_by_count = arr.sort_by {|x| arr.count(x) }.reverse.uniq
	char_values = {}
	i = 26

	char_by_count.each do |x|
		char_values[x] = i
		i -= 1
	end

	return char_values
end

def max_beauty(string)
	arr = prepare_string(string)
	char_values = assign_char_values(arr)
	
end

def print_max_beauty
	File.open(ARGV[0]).each_line do |line|
		puts max_beauty(line.chomp)
	end
end

puts max_beauty('Good luck in the Facebook Hacker Cup this year!
')