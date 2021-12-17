test = "
acedgfb cdfbe gcdfa fbcad dab cefabd cdfgeb eafb cagedb ab | cdfeb fcadb cdfeb cdbaf
"

def convert(test)
  delimiters = ["\n"]
  result = test.split(Regexp.union(delimiters))
  array = []
  result.each do |words|
    array << words.split("|")
  end
  array.each_with_index { |group, index| array.delete_at(index) if group == [] }
  final_array = array.map { |word| word[1].split(" ") }
  count = 0
  final_array.each do |wordf|
    wordf.each do |word1|
      if word1.length == 2 || word1.length == 4 || word1.length == 3 || word1.length == 7
        count += 1
      end
    end
  end
  return count
end

# with regex create two match groups, one of them with the \n and the other one without it, which would be the output values.
# count the amount of characters in group 2 and array them then sum and that's it for challenge 1
p convert(test)
