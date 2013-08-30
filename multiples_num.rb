# def multiples_num
# 	File.open(ARGV[0]).each_line do |line|
# 		input = line.split(', ')
# 		x = input[0].to_i
# 		n = input[1].to_i
# 		i = 2

# 		while n < x
# 			n = n * i 
# 			i += 1
# 		end
# 		puts n
# 	end
# end

# multiples_num

def multiples_num(x,n)
	i = 2
	while n < x
		out = n * i
		i += 1
	end
	puts out
end

multiples_num(18,8)