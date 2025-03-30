# # # def angle(n)

# # # end


# # # p "\n".match?(/[^[:alpha:]]/)
# # # p "1".match?(/[^[:alpha:]]/)
# # # p "B".match?(/[^[:alpha:]]/)

# # # if "\n".match?(/[^[:alpha:]]/) || "b".match?(/[^[:alpha:]]/)
# # #   p -1
# # # end

# # def same_case(a, b)
# #   return -1 unless (a+b).match?(/\A[a-zA-Z]{2}\z/)

# #   if (a.match?(/[a-z]/)) && (b.match?(/[a-z]/)) || (a.match?(/[A-Z]/)) && (b.match?(/[A-Z]/))
# #     return 1
# #   else
# #     return 0
# #   end
# # end

# # def same_case(a, b)
# #   return -1 unless (a+b).match?(/\A[a-zA-Z]{2}\z/)

# #   a.match?(/[a-z]/) && b.match?(/[a-z]/) ? 1 : 0
# #   # if (a.match?(/[a-z]/)) && (b.match?(/[a-z]/)) || (a.match?(/[A-Z]/)) && (b.match?(/[A-Z]/))
# #   #   return 1
# #   # else
# #   #   return 0
# #   # end
# # end

# # def same_case(a, b)
# #   return -1 unless (a+b).match?(/\A[a-zA-Z]{2}\z/)
# #   (a == a.upcase) == (b == b.upcase) ? 1 : 0
# # end



# def bouncing_ball(h, bounce, window)
#   if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h
#     return -1
#   end

#   views = 1

#   while h *= bounce > window
#     views += 2
#   end

#   views
# end


# # (3, .66, 1.5) --> 3


def moveZeros(arr) 
  # loop over
    # if 0, add to zero_total
    # else push to new arr
  # while loop to add 0s to new arr

  result = arr.select { |num| num != 0 }
  zeros = arr.select { |num| num == 0 }
  result.concat(zeros)
end



# p moveZeros [1,2,0,1,0,1,0,3,0,1] # --> [1,2,1,1,3,1,0,0,0,0]
# puts "00".to_i(16)

# puts "FF".to_i(16)

# puts 255.to_s(16).upcase

# puts r.to_s(16).upcase

def rgb(r, g, b)
  if r < 0
    r = 0
  elsif r > 255
    r = 255
  end

  if g < 0
    g = 0
  elsif g > 255
    g = 255
  end

  if b < 0
    b = 0
  elsif b > 255
    b = 255
  end

  result = ''
  rhex = r.to_s(16).upcase
  ghex = g.to_s(16).upcase
  bhex = b.to_s(16).upcase

  if rhex.size < 2
    result += "0" + rhex
  else
    result += rhex
  end

  if ghex.size < 2
    result += "0" + ghex
  else
    result += ghex
  end

  if bhex.size < 2
    result += "0" + bhex
  else
    result += bhex
  end

  result
end

p rgb(0,9,14)

# p 259.to_s(16).upcase

# p "FF".to_i < 5

# p "10".size


def rgb(r, g, b)
  [r, g, b]
    .map { |val| [[val, 0].max, 255].min } 
    .map { |val| val.to_s(16).rjust(2, '0').upcase } 
    .join
end


[r, g, b].map { |val| [[val, 0].max, 255].min } # clamp vals


Please use the adjustments from the previous questions. And please just separate numbers with a space instead of a comma and a space.

numbers = {34 59 60 30 63 94 93 77 75 99}
partition(numbers, 0, 4) is called.
Assume quicksort always chooses the element at the midpoint as the pivot.

What is the pivot?
What is the low partition?
What is the high partition?
What is numbers after partition(numbers, 0, 4) completes?