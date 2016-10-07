class Array
	def head_tail
		head, *tail = *self
		[head, tail]
	end
end

puts (1..5).head_tail


#factorial

def iterative_factorial(n)
	(1..n).inject(:*)
end

def recursive_factorial(n)
	return 1 if n <= 1
	n * recursive_factorial(n-1)
end

 #puts iterative_factorial(5)

 #puts recursive_factorial(5)

 def fib(n)
 	return n if n < 2
 	fib(n-1) + fib(n-2)
 end
# (1..20).each { |i| puts fib(i) }