
  @number_string ||= ""
	
  @roman_mapping = {
  1000 => "M",  900  => "CM",  500  => "D",
  400  => "CD", 100  => "C",    90  => "XC",
  50   => "L",   40  => "XL",   10  => "X",
  9    => "IX",   5  => "V",     4  => "IV",
  1    => "I"     }
def roman(number)
	return @number_string if number < 1
	
	@roman_mapping.each do |key, value|
		if number >= key
			@number_string << value
			number -= key
		end
	end	

	roman(number)
end

puts roman(8)
#10.times { |i| puts "#{i} = #{roman(i)}" }
