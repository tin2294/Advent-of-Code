# Figure out winner board
# Sum winner line and multiply by last called number

calls = [7,4,9,5,11,17,23,2,0,14,21,24]#,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1]
string = "
22 13 17 11 0
8  2 23  4 24
21  9 14 16 7
6 10  3 18  5
1 12 20 15 19

3 15  0  2 22
9 18 13 17  5
19  8  7 25 23
20 11 10 24  4
14 21 16 12  6

14 21 17 24  4
10 16 15  9 19
18  8 23 26 20
22 11 13  6  5
2  0 12  3  7
"

def convertcalls(calls)
  array = calls.map { |number| number.to_s }
  return array
end

def convertboards(board)
  array = []
  board.each_line {|s| array << s.split(" ") }
  array = array.map { |row| row if row != [] }
  array.compact!
  array = array.each_slice(5).to_a
  columns = []
  array.each do |card|
    columns << card.transpose
  end
  final_array = []
  columns.each_with_index do |column, index|
    final_array << column + array[index]
  end
  return final_array
end

lines = convertboards(string) #rows
calls = convertcalls(calls)

def wins(calls, hash)
  #each call
  hash2 = hash
  calls.each do |call|
    #each line replace with x if == call
    hash2.each_with_index do |board, bindex|
      board.each_with_index do |line, lindex|
        line.each_with_index do |number, index|
          if number == call
            line[index] = "X"
            if line == ["X", "X", "X", "X", "X"]
              #get the entire original array and the last call
              p "board #{bindex}, line #{lindex}, call #{call}"
            end
          end
        end
        #check that the entire 5 item array are Xs
      end
    end
  end
end

wins(calls, lines)

def points(lines, board, line, call)
  sum = 0
  lines[board][0..4].each do |line|
    line.each do |number|
      sum += number.to_i if number != "X"
    end
  end
  return sum * call.to_i
end

p points(lines, 2, 5, 24)
