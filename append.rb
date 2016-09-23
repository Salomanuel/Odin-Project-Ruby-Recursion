def append( ary, n )
	return ary if n < 0
	ary << n
	append(ary, n-1)
	return ary
end


def reverse_append(ary, n)
	return ary if n < 0
	reverse_append(ary, n-1)
	ary << n
	return ary
end

puts append([], 2).join(", ") # =>  (2,1,0)
puts append([], 3).join(", ") # =>  (3,2,1,0)
puts "*" * 40
puts reverse_append([], 1).join(", ")	# => (0,1)
puts reverse_append([], 2).join(", ")	# => (0,1,2)