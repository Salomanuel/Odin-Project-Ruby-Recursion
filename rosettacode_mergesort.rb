def merge_sort(m)
	return m if m.length <= 1
	
	middle = m.length / 2
	left   = merge_sort(m[0...middle])
	right  = merge_sort(m[middle..-1])
	# merge(left, righ)		# LAST ORIGINAL LINE
	puts "#{left}**#{right}"
	right
end

def randi(qty, range=100)
	list = []
	qty.times { list << rand(range) }
	return list
end

puts merge_sort([43,24,11,33,31])
# puts merge_sort(randi(10))
# puts randi(10)