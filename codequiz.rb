=begin
def factorio(n)
	return 1 if n == 0
	return n * factorio(n-1)
end
puts factorio 5
puts "*" * 30

def palindro(word)
	return true if word.length <= 1
	if word[0] == word[-1]
		palindro(word[1..-2]) 
	else
		return false
	end
end
puts palindro("itangabagnati")
puts palindro("anfgna")
puts "*" * 30
=end

def bottles(num)
	endphrase = "of beer on the wall"
	if 		num == 0
		puts "no more bottles #{endphrase}" 	
	elsif num == 1
		puts   "one bottle #{endphrase}" 
		bottles(num-1)			
	else
		puts 		"#{num} bottles #{endphrase}"
		bottles(num-1)
	end
end
puts bottles(5)
puts "*"*30

def fiborecurs(num)
	return 0 if num == 0
	return 1 if num == 1
	fiborecurs(num-1) + fiborecurs(num-2)
end
puts fiborecurs(6)
puts "*" * 30

def flattah(arra)
	return arra if arra.length == 1
	arra[0].join
	flattah()
end

puts flattah([[1, 2], [3, 4]]) 
# => [1, 2, 3, 4]
puts flattah([[1, [8, 9]], [3, 4]]) 
# => [1, 8, 9, 3, 4]