def find_writer(string)
	input = string.split('|')
	key = input[1].split(' ').map{ |x| x.to_i }
	raw = input[0]
	author = ''
	key.each {|x| author << raw[x-1] }
	
	return author
end

def print_writer
	File.open(ARGV[0]).each_line do |line|
		puts find_writer(line)
	end
end

puts find_writer("osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53")