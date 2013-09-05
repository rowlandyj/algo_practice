def print_multi_table(row, col)
	i = 1

	while i <= row
		s = ""
		j = 1

		while j <= col
			s << "#{i * j} ".rjust(4)
			j += 1
		end

		puts s 
		i += 1
	end
	
end

print_multi_table(12,12)