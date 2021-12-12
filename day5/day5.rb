test = %W[
0,9 -> 5,9
8,0 -> 0,8
9,4 -> 3,4
2,2 -> 2,1
7,0 -> 7,4
6,4 -> 2,0
0,9 -> 2,9
3,4 -> 1,4
0,0 -> 8,8
5,5 -> 8,2
]

test.delete("->")

test = test.each_slice(2).to_a
def get_points(array)
  array.each do |coords|
    coords[0] = coords[0].split(",")
    coords[1] = coords[1].split(",")
    if coords[0][0].to_i == coords[1][0].to_i
      if coords[0][1].to_i > coords[1][1].to_i
        new_point = coords[0][1].to_i - coords[1][1].to_i - 1
      else
        new_point = coords[1][1].to_i - coords[0][1].to_i - 1
      end
      while new_point > 0
        coords << [coords[0][0].to_i, new_point.to_s]
        new_point -= 1
      end
    elsif coords[0][1].to_i == coords[1][1].to_i
      if coords[0][0].to_i > coords[1][0].to_i
        new_point = coords[0][0].to_i - coords[1][0].to_i - 1
      else
        new_point = coords[1][0].to_i - coords[0][0].to_i - 1
      end
      while new_point > 0
        coords << [new_point.to_s, coords[0][1]]
        new_point -= 1
      end
    # else
    #   array.delete(coords)
    end
  end
  # p array
  return array
end

converted_array = get_points(test)
p converted_array[0][0].to_s

def count_duplicates(array)
  hash = Hash.new(0)
  array.each do |pair|
    hash[pair] += 1
  end
  hash.select {|k,v| v > 1 }
end

p count_duplicates(converted_array)
