def rightmost(str,chr)
	return 'na' unless str.reverse.index(chr)

	index_max = str.length - 1
	pos = index_max - str.reverse.index(chr)

	return pos
end

def print_rightmost
	File.open(ARGV[0]).each_line do |line|
		puts line
		input = line.split(',')
		string = input[0]
		char = input[1]
		print "#{rightmost(string,char)} \n"
	end
end

# print_rightmost
puts rightmost("test string",'t')
puts rightmost("test string",'a')
puts rightmost('test stringE','e')
puts rightmost('test stringE','E')

