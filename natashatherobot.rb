def factorial(n)
	(1..n).inject{ |product, n| product*n }
end

def factorial_recursion(n)
	return 1 if n == 0
	n * factorial_recursion(n-1)
end

puts factorial(5)
puts factorial_recursion(5)
puts "*" * 30

def fibonacci(n)
	sequence = []
	(0..n).each do |n|
		if n < 2
			sequence << n
		else 
			sequence << sequence[-1] + sequence[-2]
		end
	end
	sequence.last
end

def fibonacci_rec(n)
	if n < 2
		n
	else
		fibonacci_rec(n-1) + fibonacci(n-2)
	end
end

puts fibonacci(7)
puts fibonacci_rec(7)