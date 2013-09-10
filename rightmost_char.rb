# def rightmost(str,chr)
# 	return -1 unless str.include?(chr)

# 	index_max = str.length - 1
# 	pos = index_max - str.reverse.index(chr)

# 	return pos
# end

# def print_rightmost
# 	File.open(ARGV[0]).each_line do |line|
# 		input = line.split(',')
# 		string = input[0]
# 		char = input[1]
# 		puts rightmost(string,char)
# 	end
# end

def rightmost(input)
	input = input.split(',')
	str = input[0]
	char = input[1].chomp

	return -1 unless str.include?(char)
	
	index_max = str.length - 1
	reverse_index = str.reverse.index(char)
	pos = index_max - reverse_index
	return pos

end

def print_rightmost
	File.open(ARGV[0]).each_line do |line|
		puts rightmost(line)
	end
end

# print_rightmost
puts rightmost("test string,t")
puts rightmost("test string,a")
puts rightmost('test stringE,e')
puts rightmost('test stringE,E')
puts rightmost('Hello World,r')
puts rightmost('Hello CodeEval,E')

