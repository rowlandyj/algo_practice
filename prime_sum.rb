def prime?(num)
	2.upto(Math.sqrt(num)) do |x|
	return false if num % x == 0
	end
	true
end

def primes(max_length)
	primes = []
	i = 2
	while primes.length < max_length
		
	end

	return primes
end

# def sum_primes(max)
# 	sum = 0
# 	max.downto(2) do |x|
# 		sum += x if prime?(x)
# 	end
# 	return sum
# end
# require 'mathn'
# def sum_primes(max)
# 	sum = 0
# 	max.downto(2) do |x|
# 		sum += x if x.prime?
# 	end
# 	return sum
# end

puts sum_primes(1000)