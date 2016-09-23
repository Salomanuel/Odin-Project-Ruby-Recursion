def append( ary, n )
	return ary << 0 if n == 0
	ary << n
	append(ary, n-1)
end

puts append([], 2).join(", ") # => [2, 1, 0]
puts append([], 3).join(", ") # => [3, 2, 1, 0]