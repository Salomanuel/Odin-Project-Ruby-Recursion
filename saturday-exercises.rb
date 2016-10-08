def merge_sort(input)
	return input if input.length < 2
	if input.length == 2
		if input[0] < input[-1]
			return [input[0], input[1]]
		else
			return [input[1], input[0]]
		end
	end
	merge_sort([input[0], input[1..-1]])
end



puts merge_sort([52,34,11]).join(", ")