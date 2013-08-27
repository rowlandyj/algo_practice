def fizz_buzz
	
	File.open(ARGV[0]).each_line do |line|
		o = ""
		params = line.split

		1.upto(params[2].to_i) do |num|
			o << "F" if num % params[0].to_i == 0
			o << "B" if num % params[1].to_i == 0
			o << "#{num}" if (num % params[0].to_i != 0 && num % params[1].to_i != 0)
			o << " "
		end

		puts o
	end

end

fizz_buzz
