def fizz_buzz(a,b,range)
	1.upto(range) do |x|
		if x % a == 0 && x % b == 0
			puts 'Fizz Buzz'
		elsif x % a == 0
			puts 'Fizz'
		elsif x % b == 0
			puts 'Buzz'
		else
			puts x
		end
	end
end

fizz_buzz(3,5,20)