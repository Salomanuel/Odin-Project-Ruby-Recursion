def fib2(n)
	solutions = [0,1,1,2,3,5,8,13,21,34,55] 
	return solutions[n]
end

def fib(n)
	@solutions ||= [0,1,1]
	return @solutions[-3] if n < 1
	@solutions << @solutions[-1] + @solutions[-2]
	fib(n-1)
end

def fib3(n)
	return 0 if n == 0
	return 1 if n == 1
	fib3(n-1) + fib3(n-2)
end

def fib4(n)
	return 0 if n == 0
	return 1 if n == 1
	fib4(n-1) + fib4(n-2)
end


#puts fib(3)  
10.times { |i| puts "for #{i}: #{fib4(i)}"}
