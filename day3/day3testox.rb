test = %W[
00100
11110
10110
10111
10101
01111
00111
11100
10000
11001
00010
01010
]


def convert(array)
  final = array.map do |word|
    word.split('').to_a
  end
  p final
  return final
end

final = convert(test)


def decimal(array)
  exponent = 11
  pending_sum = []
  array.each do |bit|
    pending_sum << (bit.to_i) * (2 ** exponent)
    exponent -= 1
  end
  return pending_sum.sum
end

def gamma(array)
  first = []
  second = []
  third = []
  fourth = []
  fifth = []
  # sixth = []
  # seventh = []
  # eight = []
  # ninth = []
  # tenth = []
  # eleventh = []
  # twelfth = []
  array.each do |mini_arr|
    first << mini_arr[0]
    second << mini_arr[1]
    third << mini_arr[2]
    fourth << mini_arr[3]
    fifth << mini_arr[4]
    # sixth << mini_arr[5]
    # seventh << mini_arr[6]
    # eight << mini_arr[7]
    # ninth << mini_arr[8]
    # tenth << mini_arr[9]
    # eleventh << mini_arr[10]
    # twelfth << mini_arr[11]
  end
  oxygen = []
  first.each_with_index do |row, i|
    # p column.count("0") + column.count("1")
    if first.count("0") > first.count("1")
      if row == "0"
        oxygen << "#{row}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}"
      end
    else
      if row == "1"
        oxygen << "#{row}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}"
      end
    end
  end
  p oxygen.count
  return oxygen
end

def secondox(final)
  ox = final.map { |i| i.split("")}
  first = []
  second = []
  third = []
  fourth = []
  fifth = []
  # sixth = []
  # seventh = []
  # eight = []
  # ninth = []
  # tenth = []
  # eleventh = []
  # twelfth = []
  ox.each do |mini_arr|
    first << mini_arr[0]
    second << mini_arr[1]
    third << mini_arr[2]
    fourth << mini_arr[3]
    fifth << mini_arr[4]
    # sixth << mini_arr[5]
    # seventh << mini_arr[6]
    # eight << mini_arr[7]
    # ninth << mini_arr[8]
    # tenth << mini_arr[9]
    # eleventh << mini_arr[10]
    # twelfth << mini_arr[11]
  end
  oxygen = []
  second.each_with_index do |row, i|
    # p column.count("0") + column.count("1")
    if second.count("0") > second.count("1")
      if row == "0"
        oxygen << "#{first[i]}#{row}#{third[i]}#{fourth[i]}#{fifth[i]}"
      end
    else
      if row == "1"
        oxygen << "#{first[i]}#{row}#{third[i]}#{fourth[i]}#{fifth[i]}"
      end
    end
  end
  p oxygen.count
  return oxygen
end

def thirdox(final)
  ox = final.map { |i| i.split("")}
  first = []
  second = []
  third = []
  fourth = []
  fifth = []
  # sixth = []
  # seventh = []
  # eight = []
  # ninth = []
  # tenth = []
  # eleventh = []
  # twelfth = []
  ox.each do |mini_arr|
    first << mini_arr[0]
    second << mini_arr[1]
    third << mini_arr[2]
    fourth << mini_arr[3]
    fifth << mini_arr[4]
    # sixth << mini_arr[5]
    # seventh << mini_arr[6]
    # eight << mini_arr[7]
    # ninth << mini_arr[8]
    # tenth << mini_arr[9]
    # eleventh << mini_arr[10]
    # twelfth << mini_arr[11]
  end
  oxygen = []
  third.each_with_index do |row, i|
    # p column.count("0") + column.count("1")
    if third.count("0") > third.count("1")
      if row == "0"
        oxygen << "#{first[i]}#{second[i]}#{row}#{fourth[i]}#{fifth[i]}"
      end
    else
      if row == "1"
        oxygen << "#{first[i]}#{second[i]}#{row}#{fourth[i]}#{fifth[i]}"
      end
    end
  end
  p oxygen.count
  return oxygen
end

def fourthox(final)
  ox = final.map { |i| i.split("")}
  first = []
  second = []
  third = []
  fourth = []
  fifth = []
  # sixth = []
  # seventh = []
  # eight = []
  # ninth = []
  # tenth = []
  # eleventh = []
  # twelfth = []
  ox.each do |mini_arr|
    first << mini_arr[0]
    second << mini_arr[1]
    third << mini_arr[2]
    fourth << mini_arr[3]
    fifth << mini_arr[4]
    # sixth << mini_arr[5]
    # seventh << mini_arr[6]
    # eight << mini_arr[7]
    # ninth << mini_arr[8]
    # tenth << mini_arr[9]
    # eleventh << mini_arr[10]
    # twelfth << mini_arr[11]
  end
  oxygen = []
  fourth.each_with_index do |row, i|
    # p column.count("0") + column.count("1")
    if fourth.count("0") > fourth.count("1")
      if row == "0"
        oxygen << "#{first[i]}#{second[i]}#{third[i]}#{row}#{fifth[i]}"
      end
    else
      if row == "1"
        oxygen << "#{first[i]}#{second[i]}#{third[i]}#{row}#{fifth[i]}"
      end
    end
  end
  p oxygen.count
  return oxygen
end

def fifthox(final)
  ox = final.map { |i| i.split("")}
  first = []
  second = []
  third = []
  fourth = []
  fifth = []
  # sixth = []
  # seventh = []
  # eight = []
  # ninth = []
  # tenth = []
  # eleventh = []
  # twelfth = []
  ox.each do |mini_arr|
    first << mini_arr[0]
    second << mini_arr[1]
    third << mini_arr[2]
    fourth << mini_arr[3]
    fifth << mini_arr[4]
    # sixth << mini_arr[5]
    # seventh << mini_arr[6]
    # eight << mini_arr[7]
    # ninth << mini_arr[8]
    # tenth << mini_arr[9]
    # eleventh << mini_arr[10]
    # twelfth << mini_arr[11]
  end
  oxygen = []
  fifth.each_with_index do |row, i|
    # p column.count("0") + column.count("1")
    if fifth.count("0") > fifth.count("1")
      if row == "0"
        oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{row}"
      end
    else
      if row == "1"
        oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{row}"
      end
    end
  end
  p oxygen.count
  return oxygen
end

# def sixthox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   sixth.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if sixth.count("0") > sixth.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{row}#{seventh[i]}#{eight[i]}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{row}#{seventh[i]}#{eight[i]}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# def seventhox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   seventh.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if seventh.count("0") > seventh.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{row}#{eight[i]}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{row}#{eight[i]}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# def eighthox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   eight.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if eight.count("0") > eight.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{row}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{row}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# def ninthox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   ninth.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if ninth.count("0") > ninth.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{row}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{row}#{tenth[i]}#{eleventh[i]}#{twelfth[i]}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# def tenthox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   tenth.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if tenth.count("0") > tenth.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{ninth[i]}#{row}#{eleventh[i]}#{twelfth[i]}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{ninth[i]}#{row}#{eleventh[i]}#{twelfth[i]}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# def eleventhox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   eleventh.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if eleventh.count("0") > eleventh.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{ninth[i]}#{tenth[i]}#{row}#{twelfth[i]}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{ninth[i]}#{tenth[i]}#{row}#{twelfth[i]}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# def twelfthox(final)
#   ox = final.map { |i| i.split("")}
#   first = []
#   second = []
#   third = []
#   fourth = []
#   fifth = []
#   sixth = []
#   seventh = []
#   eight = []
#   ninth = []
#   tenth = []
#   eleventh = []
#   twelfth = []
#   ox.each do |mini_arr|
#     first << mini_arr[0]
#     second << mini_arr[1]
#     third << mini_arr[2]
#     fourth << mini_arr[3]
#     fifth << mini_arr[4]
#     sixth << mini_arr[5]
#     seventh << mini_arr[6]
#     eight << mini_arr[7]
#     ninth << mini_arr[8]
#     tenth << mini_arr[9]
#     eleventh << mini_arr[10]
#     twelfth << mini_arr[11]
#   end
#   oxygen = []
#   twelfth.each_with_index do |row, i|
#     # p column.count("0") + column.count("1")
#     if twelfth.count("0") > twelfth.count("1")
#       if row == "0"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{row}"
#       end
#     else
#       if row == "1"
#         oxygen << "#{first[i]}#{second[i]}#{third[i]}#{fourth[i]}#{fifth[i]}#{sixth[i]}#{seventh[i]}#{eight[i]}#{ninth[i]}#{tenth[i]}#{eleventh[i]}#{row}"
#       end
#     end
#   end
#   p oxygen.count
#   return oxygen
# end

# p gamma(final).count
# p twelfthox(eleventhox(tenthox(ninthox(eighthox(seventhox(sixthox(fifthox(fourthox(thirdox(secondox(gamma(final))))))))))))
p fifthox(fourthox(thirdox(secondox(gamma(final)))))
# 011101110101
