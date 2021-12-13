start = [3,4,3,1,2]

def reproduce(days, start)
  days.times do
    start.each_with_index do |spawn, index|
      if spawn > 0
        new_day = spawn - 1
        start[index] = new_day
      elsif spawn == 0
        start[index] = 6
        start << 9
      end
    end
  end
  return start
end

p reproduce(80, start).count
