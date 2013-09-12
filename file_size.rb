def file_size(file_path)
	File.stat(file_path).size
end

def print_file_size
	File.open(ARGV[0]).each_line do |line|
		puts File.stat(line.chomp).size
	end
end

print_file_size

# puts file_size("C:/Users/Rowland/Desktop/Waste Time Here/GBADS/VisualBoyAdvance.exe")