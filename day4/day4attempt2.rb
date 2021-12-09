# Figure out winner board
# Sum winner line and multiply by last called number

calls = [7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1]
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
  return array
end

rows = convertboards(string) #rows
calls = convertcalls(calls)

def group_by_board(wins)
  wins.group_by { |value| value[0] }
end

def count_wins(status)
  col_arr = []
  row_arr = []
  status.each do |board, bingos|
    col = bingos.group_by { |bingo| bingo[1] }
    row = bingos.group_by { |bingo| bingo[2] }
    col.each do |k, v|
      col_arr << [board, v.count]
    end
    row.each do |k, v|
      row_arr << [board, v.count]
    end

    total = col_arr + row_arr

    total = total.map { |arr| arr[1] }

    unless total.include?(5)
      "-"
    else
      p "winner is #{board}"
    end
  end
end


def wins(calls, array)
  wins = []
  calls.each do |call|
    array.each_with_index do |v, vindex|
      v.each_with_index do |row, rindex|
        row.each_with_index do |number, index|
          wins << [vindex, rindex, index] if number == call
        end
      end
      board_status = group_by_board(wins)
      count_wins(board_status)
      p call
    end
  end
  return wins
end

p wins(calls, rows)
