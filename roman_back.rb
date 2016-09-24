@roman_mapping = {
  "M" => 1000, "CM" => 900,  "D"  => 500,
  "CD" => 400,  "C" => 100,  "XC" => 90,
  "L" => 50,   "XL" => 40,    "X" => 10,
  "IX" => 9,    "V" => 5,    "IV" => 4, "I" => 1 }
@number ||= 0

def from_roman(literal)
  puts @number if literal.length < 1
  return @number if literal.length < 1
  @iteration ||= 0
  @iteration += 1
  @roman_mapping.each do |key, value|
    if    literal[0] == key
     #puts "literal:#{literal}, key:#{key}, value:#{value}, NUMBER:#{@number}, iter:#{@iteration}"
      @number += value
      literal[0] = ""
      from_roman(literal)
    elsif literal[0..1] == key
      #puts "literal:#{literal}, key:#{key}, value:#{value}, NUMBER:#{@number}, iter:#{@iteration}"
      @number += value
      literal[0..1] = ""
      from_roman(literal)
    end
  end
end

#puts from_roman("LXXXVII") # => 87
#puts from_roman("MCMXCVI") # => 1996
puts from_roman("MMXVIII") # => 2018