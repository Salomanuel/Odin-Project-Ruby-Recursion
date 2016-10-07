def fibo(n)
	if n < 2
		n
	else
		fibo(n-1) + fibo(n-2)
	end
end

puts fibo(7)

def fibo_list_i(n)
	sequence = []
	(0..n).each do |n|
		if n < 2
			sequence << n
		else
			sequence << sequence[-1] + sequence[-2]
		end
	end
	sequence
end

puts fibo_list_i(7).join(", ")

def fact(n)
	return 1 if (0..1).include?(n)
	n * fact(n-1)
end

# puts fact(7)

def factorial_i(n)
	(1..n).inject{ |product, n| product*n }
end

def factorial_r(n)
	if n == 0
		1
	else
		n * factorial_r(n-1)
	end
end

# puts factorial_i(7)
# puts factorial_r(7)

class Array
  def head_tail
    head, *tail = *self
    [head, tail]
  end
end


def recur_sum(array)
	if array.empty?
		0
	else
		head, tail = array.head_tail
		head + recur_sum(tail)
	end
end

# puts recur_sum([1,2,3,4,5])

def recur_fact(num)
	if num == 0 or num == 1
		1
	else 
		num * recur_fact(num-1)
	end
end

def iter_fact(num)
	if num == 0 or num == 1
		1
	else
		sum = 1
		num.times do |n| 
			sum *= (n+1)
		end
		sum
	end
end

# puts iter_fact(7)
# puts recur_fact(7)


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