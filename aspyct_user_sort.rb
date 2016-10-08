# can't get it to work

def quicksort(array, from=0, to=nil)
	if to == nil
		# sort the whole array, by default
		to = array.count -1
	end

	if from >= to
		return	# because it's done sorting
	end
	# take a pivot value, at far left
	pivot = array[from]

	min = from
	max = to

	# current free slot
	free = min

	while min < max
		if free == min # evaluate array[max]
			if array[max] <= pivot # smaller than pivot, must move
				array[free] = array[max]
				min += 1
				free = max
			else
				max -= 1
			end
		elsif free = max # evaluate array [min]
			if array[min] >= pivot # bigger than pivot, must move
				array[free] = array[min]
				max -= 1
				free = min
			else
				min += 1
			end
		else
			raise "Inconsistent state"
		end
	end

	array[free] = pivot
	
	quicksort array, from, free - 1
	quicksort array, free + 1, to
end

def randi(qty,range=100)
	list = []
	qty.times { list << rand(range) }
	return list
end

list = randi(10)
puts list.join(", ")
puts quicksort(list).class
puts list.join(", ")
