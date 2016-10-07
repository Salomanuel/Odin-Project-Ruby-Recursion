rocks = 30.times.map{rand(200)+1}

max_rock = 0

rocks.each do |rock|
	max_rock = rock if max_rock < rock
end

# puts "heaviest rock is #{max_rock}"

def rock_judger(rocks_arr)
	if rocks_arr.length <= 2 # base
		a = rocks_arr[0]
		b = rocks_arr[-1]
	else
		a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
		b = rock_judger(rocks_arr)
	end

	return a > b ? a : b
end

puts "heaviest rock is #{rock_judger(rocks)}"