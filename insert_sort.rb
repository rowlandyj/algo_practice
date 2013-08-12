def insert_sort(arr)
	
	1.upto(arr.length-1) do |i|
		target = arr[i]
		j = i - 1

		while j >= 0 && arr[j] > target
			arr[j+1] = arr[j]
			j -= 1
		end

		arr[j+1] = target
	end

	return arr
end
ex_arr = [13,5,7,6,4,1,9]
p insert_sort(ex_arr) == ex_arr.sort


def reverse_insert_sort(arr)

	1.upto(arr.length-1) do |i|
		target = arr[i]
		j = i - 1

		while j >= 0 && arr[j] < target #this is the only field we have to change
			arr[j+1] = arr[j]
			j -= 1
		end

		arr[j+1] = target
	end

	return arr
end

p reverse_insert_sort(ex_arr)== ex_arr.sort.reverse