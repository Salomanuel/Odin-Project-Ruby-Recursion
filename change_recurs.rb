def change(goal, highest=0, sum=0, coins=[])
	@amounts = [1,5,10,25,50]
	# display result if we have correct change
	if sum == goal 
		display(coins)
	end

	# return if we have too much money
	if sum > goal
		return
	end

	# loop over coin amounts and try adding them
	@amounts.each do |value|
		if value >= highest
			# copy the coins array, add value to it
			copy = Array[]
			copy.concat(coins)
			copy << value
			# recursive call: add further coins if needed
			change(goal, value, sum+value, copy)
		end
	end
end

def display(coins)
	# display all the coins
	@amounts.each do |amount|
		count = 0
		coins.each do |coin|
			if coin == amount
				count += 1
			end
		end
		print amount, ": ", count, "\n"
	end
	print "\n"
end

# make change for 51 cents
# change(51)
change(37)
# def change(coins, amounts, highest, sum, goal)
