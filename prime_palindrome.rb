#You can also require 'mathn' and just use the built in prime checker
def prime?(num)
	2.upto(Math.sqrt(num)) do |x|
		return false if num % x == 0
	end
	true
end

def palindrome?(string)
	string[0] == string[-1]
end

def prime_palindrome(max)
	max.downto(2) do |x|
		if palindrome?(x.to_s)
			return x if prime?(x)
		end
	end
	2 
end

puts prime_palindrome(1000)
