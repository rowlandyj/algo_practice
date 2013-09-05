def fib(i)
	fib_hash = Hash.new {|h,k| k < 2 ? h[k] = k : h[k] = h[k-1] + h[k-2] }

	fib_hash[i]
end

def fib2(i)
	target = 0
	after = 1
	
	i.times do |n|
		target, after = after, target + after
	end

	return target
end

# def print_fib
# 	File.open(ARGV[0]).each_line do |line|
# 			n = line.to_i
# 			puts fib(n)
# 	end
# end

# print_fib
