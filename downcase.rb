def downcase
	File.open(ARGV[0]).each_line do |line|
		line.gsub!(/[A-Z]/) do |x|
			x = (x.ord+32).chr
		end
		puts line
	end
end

downcase

# def dcase (string)
# 	string.gsub!(/[A-Z]/) do |x|
# 		x = (x.ord + 32).chr
# 	end
# 	# puts string
# end

# puts dcase("I hopE thIS wORKS")