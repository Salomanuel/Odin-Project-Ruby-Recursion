def factorial(n)
	(1..n).inject{ |product, n| product*n }
end

def factorial_recursion(n)
	return 1 if n == 0
	n * factorial_recursion(n-1)
end

puts factorial(5)

puts factorial_recursion(5)