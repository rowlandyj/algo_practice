ex_arr = [13,5,7,6,4,1,9]

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left  = arr[0...mid]
  right = arr[mid..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left,right)
	sorted = []
  until left.empty? or right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

p merge_sort(ex_arr)