# # # input: str
# # # output: str

# # def generateHashtag(str)
# #   return false if str.strip.empty?

# #   result = str.split.map { |word| word.capitalize }.join

# #   result.size > 139 ? false : "#" + result
# # end


# # def generate_hashtag(str)
# #   return false if str.strip.empty?

# #   result = "#" + str.split.map(&:capitalize).join
# #   result.length > 140 ? false : result
# # end


# # def generateHashtag(str)
# #   return false if str.strip.empty?

# #   result = "#" + str.split.map(&:capitalize).join
# #   result.length > 140 ? false : result
# # end

# # # if empty, return false

# # # cut off whitespace
# # # separate into arr of words
# # # cap first letter of each word
# # # result = join on nothing, and precede with hashtag

# # # if longer than 140, return false
# # # else return result

# # p "    Hello     World   ".split


# # input: arr of strings ---> ["North", "South", "East"]
# # output: arr of strings ---> ["East"]

# def dir_reduc(pole)
  
# end



# # add direction to result_arr
# result = []

# base = pole[0]

# i = 0
# while i < pole.length  # --> 7
#   cur = pole[i]        # cur = 5 - N
#                        # i = 5
  
#   while pole[i + 1] is opposite or same
#     i += 1
#   end

#   i += 1
#   # cur = pole[i]
#   # else  
#   #   i += 1
# end
    
# i =        0        1        2       3        4       5       6
# pole = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# []


# start vertical
# n - s,n --> cancels
# n - w,e -
# e - s, n


# def dir_reduc(poles)
#   opposites = { 
#     NORTH: "SOUTH", 
#     SOUTH: "NORTH", 
#     EAST: "WEST", 
#     WEST: "EAST" 
#   }
#   shortcut = []

#   poles.each do |direction|
#     if shortcut.last == opposites[direction]
#       shortcut.pop
#     else
#       shortcut.push(direction)
#     end
#   end

#   shortcut
# end

# # i =        0        1        2       3        4       5       6
# # poles = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# # short = [S]

# # Opposites = {
# #   "NORTH" => "SOUTH",
# #   "SOUTH" => "NORTH",
# #   "EAST" => "WEST",
# #   "WEST" => "EAST"
# # }

# # def dirReduc(arr)
# #   shortcut = []

# #   arr.each do |dir|
# #     Opposites[dir] == shortcut.last ? shortcut.pop : shortcut.push(dir)
# #   end

# #   shortcut
# # end

# # ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# # "stress"
# def first_non_repeating_letter(s) 
#   bank = Hash.new(0)

#   s.each_char { |char| bank[char.upcase] += 1}

#   s.each_char do |char|
#     if bank[char.upcase] == 1
#       return char
#     end
#   end

#   return ""
# end


# create hash

# loop over string

# check hash for char.upcase
#   if exists, increment
#   else add char

# loop over string again,
#   if val is 1, return it

# return ""



# def  first_non_repeating_letter(s) 
# 	s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || ""
# end

# acceptable = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm']

# def printer_error(s)

#   errors
# 	s.each_char do |char|
#     if !acceptable.include?
#       errors += 1
#     end
#   end
#   "#{errors}/#{s.length}"
# end

# loop over S
# if not a-m, increment errors

# return "#{errors}/#{s.length}"


# i = 0
# sum of []
# sum of [1..]
# sum of 

# if sum > max
#   max = sum
# end

def max_sequence(arr)

  if arr.empty?
    return 0
  end
  
  if arr.length == 1
    return arr[0] > 0 ? arr[0] : 0
  end

  max = 0
  i = 0
  while i < arr.length
    j = i
    while j <= arr.length
      if arr[i..j].sum > max
        max = arr[i..j].sum
      end
      j += 1
    end
    i += 1
  end
  max
end

# [-2, 1, -3, 4, -1, 2, 1, -5, 4]

# i = 0
# j = 1

p max_sequence([-9, -17, -6, 0, -8, 24])
# p [1,2][0..0].sum


def max_sequence(arr)
  return 0 if arr.empty?

  best_sum = 0
  max = 0
  
  arr.each do |num|
    best_sum = [num, best_sum + num].max
    max = [max, best_sum].max            
  end

  max
end

# [-9, -17, -6, 0, -8, 24]