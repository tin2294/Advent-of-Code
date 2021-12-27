test = %W[
4199943210
3987894921
9856789892
8767896789
9899965678
]

test = test.map { |line| line.split("") }
test = test.map do |line|
   line.map { |number| number.to_i }
end
# p test
# find adjacents with the arrays -1 and +1 and indices within the line +1 and -1
# if adjacents are all higher than the number, add number to array

def adjacents(array)
  lows = []
  array.each_with_index do |line, index1|
    line.each_with_index do |number, index2|
      if index1 > 0 && index2 > 0
        if (number < array[index1 - 1][index2]) && (number < array[index1 + 1][index2]) && (number < line[index2 - 1]) && (number < line[index2 + 1])
          lows << number
          # if index1 is 0 or more than 0 then do, if not do not proceed
        end
      elsif index1 > 0 && index2 == 0
        if (number < array[index1 - 1][index2]) && (number < array[index1 + 1][index2]) && (number < line[index2 + 1])
          lows << number
          # if index1 is 0 or more than 0 then do, if not do not proceed
        end
      elsif index1 == 0 && index2 == 0
        if (number < array[index1 + 1][index2]) && (number < line[index2 + 1])
          lows << number
          # if index1 is 0 or more than 0 then do, if not do not proceed
        end
      elsif index1 == 0 && index2 > 0
        if (number < array[index1 + 1][index2]) && (number < line[index2 - 1]) && (number < line[index2 + 1])
          lows << number
          # if index1 is 0 or more than 0 then do, if not do not proceed
        end
      end
    end
  end
  return lows
end

def points(array)
  result = array.map { |number| number + 1 }
  result.sum
end

winners = adjacents(test)
p winners
p points(winners)
