test = "
acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb eafb cagedb ab | cdfeb fcadb cdfeb cdbaf
"

def output(test)
  delimiters = ["\n"]
  result = test.split(Regexp.union(delimiters))
  array = []
  result.each do |words|
    array << words.split("|")
  end
  array.each_with_index { |group, index| array.delete_at(index) if group == [] }
  array.map { |word| word[1].split(" ") }
end

def input(test)
  delimiters = ["\n"]
  result = test.split(Regexp.union(delimiters))
  array = []
  result.each do |words|
    array << words.split("|")
  end
  array.each_with_index { |group, index| array.delete_at(index) if group == [] }
  array.map { |word| word[0].split(" ") }
end

def includes(big, sub)
  sub = sub.split("")
  big = big.split("")
  final = sub.map { |letter| big.include?(letter) }
  return final.all?
end

# big = "cdfgeb"
# small = "cdfbe"
# p includes(big, small)

def non_unique(array)
  # eliminar del array original los que ya son unique
  # los non_unique ponerlos aquí para los de 6 y 5 dígitos. De aquí se hace el check cogiendo lo del def anterior.
end

def get_numbers(array)
  hash_final = Hash.new(0)
  array.each do |digit|
    if digit.length == 2
      hash_final[1] = digit
    elsif digit.length == 4
      hash_final[4] = digit
    elsif digit.length == 7
      hash_final[8] = digit
    elsif digit.length == 3
      hash_final[7] = digit
    # elsif digit.length == 6
    #   if includes(digit, hash_final[4][0])
    #     hash_final[9] = digit
    #   elsif includes(digit, hash_final[1][0])
    #     hash_final[0] = digit
    #   else
    #     hash_final[6] = digit
    #   end
    # elsif digit.length == 5
    #   if includes(digit, hash_final[1][0])
    #     hash_final[3] = digit
    #   elsif includes(hash_final[6][0], digit)
    #     hash_final[5] = digit
    #   else
    #     hash_final[2] = digit
    #   end
    end
  end
  return hash_final
end

output = output(test)[0]
input =  input(test)[0]

p output

p get_numbers(output)
# p get_numbers(input)
