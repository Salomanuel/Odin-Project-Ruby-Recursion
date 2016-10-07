def fact(n)
	return 1 if (0..1).include?(n)
	n * fact(n-1)
end
# puts fact(6)

# puts [1,2,3].each.class
x = [1,2,3]

enum = x.each
# puts enum.class
# puts enum.next
# puts enum.next

def fact(n)
  (1..n).inject(:*) || 1
end
#put fact(6)
#Prime.lazy.select { |x| x.to_s.include?('3') }.take(20).to_a