def randi(qwty,range=100)
	arra = []
	qwty.times { arra << rand(range) }
	return arra
end

def merge_sort(lst)
	if lst.length <= 1
		lst
	else
		mid   = (lst.length / 2).floor
		left  = merge_sort(lst[0..mid -1])
		right = merge_sort(lst[mid..lst.length])
		merge(left, right)
	end
end

def merge(left, right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first]  + merge(left[1..left.length],  right)
	else
		[right.first] + merge(left, right[1..right.length])
	end
end

puts merge_sort(randi(10)).join(", ")