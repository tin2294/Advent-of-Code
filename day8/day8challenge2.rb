test = "
be cfbegad cbdgef fgaecd cgeb fdcge agebfd fecdb fabcd edb | fdgacbe cefdb cefbgd gcbe
edbfga begcd cbg gc gcadebf fbgde acbgfd abcde gfcbed gfec | fcgedb cgb dgebacf gc
fgaebd cg bdaec gdafb agbcfd gdcbef bgcad gfac gcb cdgabef | cg cg fdcagb cbg
fbegcd cbd adcefb dageb afcb bc aefdc ecdab fgdeca fcdbega | efabcd cedba gadfec cb
aecbfdg fbg gf bafeg dbefa fcge gcbea fcaegb dgceab fcbdga | gecf egdcabf bgf bfgea
fgeab ca afcebg bdacfeg cfaedg gcfdb baec bfadeg bafgc acf | gebdcfa ecba ca fadegcb
dbcfg fgd bdegcaf fgec aegbdf ecdfab fbedc dacgb gdcebf gf | cefg dcbef fcge gbcadfe
bdfegc cbegaf gecbf dfcage bdacg ed bedf ced adcbefg gebcd | ed bcgafe cdgba cbgef
egadfb cdbfeg cegd fecab cgb gbdefca cg fgcdab egfdb bfceg | gbdfcae bgc cg cgb
gcafb gcf dcaebfg ecagb gf abcdeg gaef cafbge fdbac fegbdc | fgae cfgab fg bagce
"

def output(test)
  delimiters = ["\n"]
  result = test.split(Regexp.union(delimiters))
  array = []
  result.each do |words|
    array << words.split("|")
  end
  array.each_with_index { |group, index| array.delete_at(index) if group == [] }
  result = array.map { |word| word[1].split(" ") }
  return result
end

def input(test)
  delimiters = ["\n"]
  result = test.split(Regexp.union(delimiters))
  array = []
  result.each do |words|
    array << words.split("|")
  end
  array.each_with_index { |group, index| array.delete_at(index) if group == [] }
  result = array.map { |word| word[0].split(" ") }
  return result
end

def includes(big, sub)
  sub = sub.split("")
  big = big.split("")
  final = sub.map { |letter| big.include?(letter) }
  return final.all?
end

# big = "cagedb"
# small = "ab"
# p includes(big, small)

def non_unique(array, hash)
  hash_half = Hash.new(0)
  array1 = array.select { |letters| letters.length == 6 }
  array2 = array.select { |letters| letters.length == 5 }
  array1.each_with_index do |digit, index|
    if digit.length == 6
      if includes(digit, hash[1])
        if includes(digit, hash[4])
          hash_half[9] = digit
        else
          hash_half[0] = digit
        end
      else
        hash_half[6] = digit
      end
    end
  end
  array2.each do |digit2|
    if includes(digit2, hash[1])
      hash_half[3] = digit2
    elsif includes(hash_half[6], digit2)
      hash_half[5] = digit2
    else
      hash_half[2] = digit2
    end
  end
  return hash_half
  # eliminar del array original los que ya son unique
  # los non_unique ponerlos aquí para los de 6 y 5 dígitos. De aquí se hace el check cogiendo lo del def anterior.
  # method for output
end

def get_numbers(array)
  hashes = []
  hash_final = Hash.new(0)
  array.each do |mini_arr|
    mini_arr.each_with_index do |digit, index|
      if digit.length == 2
        hash_final[1] = digit
        mini_arr.delete_at(index)
      elsif digit.length == 4
        hash_final[4] = digit
        mini_arr.delete_at(index)
      elsif digit.length == 7
        hash_final[8] = digit
        mini_arr.delete_at(index)
      elsif digit.length == 3
        hash_final[7] = digit
        mini_arr.delete_at(index)
      end
    end
    hash_final = hash_final.merge(non_unique(mini_arr, hash_final))
    hashes << hash_final
  end
  return hashes
end

input = input(test)

hashes = get_numbers(input)
output = output(test)

def output_digits(output, hashes)
  result = []
  hashes.each do |hash|
    hash.each do |key, value|
      hash[key] = value.chars.sort.join
    end
  end
  p hashes
  output.each_with_index do |moutput|
    moutput.each_with_index do |word, index|
      moutput[index] = word.chars.sort.join
    end
    moutput.each do |word|
      result << hash.key("#{word}")
    end
  end
  return result
end

output_digits(output, hashes)
