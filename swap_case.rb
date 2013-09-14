#One can also just use .swapcase on the string

def swap_case(string)
	string.gsub(/\w/) do |x|
		x == x.downcase ? x = x.upcase : x.downcase
	end
end

def print_swap_case
	File.open(ARGV[0]).each_line do |line|
		puts swap_case(line)
	end
end

puts swap_case('Hello World')