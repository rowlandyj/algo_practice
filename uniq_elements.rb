#can use .uniq but that makes the problem trivial
def uniq_elems(list)
	uniq = []
	list.each do |x|
		uniq << x.to_i if !uniq.include?(x.to_i)
	end
	return uniq
end

def print_uniq_elems
	File.open(ARGV[0]).each_line do |line|
		puts uniq_elems(line.split(',')).join(',')
	end
end

print_uniq_elems

# puts uniq_elems([1,2,3,4,4,5]).join(',')