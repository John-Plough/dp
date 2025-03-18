# Start with an array of numbers and create a new array with only the numbers less than 20.
# For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].

arr = [2, 32, 80, 18, 12, 3]
p arr.select { |num| num < 20 }

# Start with an array of strings and create a new array with only the strings that start with the letter "w".
# For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].

arr = ["winner", "Winner", "chicken", "dinner"]
ws = []
arr.each do |word|
  if word[0].downcase == 'w'
    ws << word
  end
end
p ws

p arr.select { |word| word.downcase.start_with? "w" }
p arr.select { |word| word[0].downcase == "w" }

# Start with an array of strings and create a new array with only the strings that start with the letter "w".
# For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].

words = ["winner", "winner", "Winner", "chicken", "dinner"]
ws = []

i = 0
while i < words.length
  if words[i][0].downcase == "w"
    ws << words[i] 
  end
  i += 1
end
p ws

words = ["winner", "winner", "Winner", "chicken", "dinner"]
ws = []

words.each do |word| 
  if word[0].downcase == 'w'
    ws << word
  end
end
p ws

words = ["winner", "winner", "Winner", "chicken", "dinner"]
ws = words.select { |word| word[0].downcase == 'w' }
p ws
wss = words.select do |word|
  word[0].downcase == 'w'
end
p wss

words = ["winner", "winner", "Winner", "Winner", "chicken", "dinner"]
ws = words.select { |word| word.downcase.start_with? 'w' }
p ws

# Start with an array of hashes and create a new array with only the hashes with prices greater than 5 (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}].

items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

exp = []
items.each do |item|
  if item[:price] > 5
    exp << item
  end
end
p exp

p items.select { |item| item[:price] > 5 }


# Start with an array of numbers and create a new array with only the even numbers.
# For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].




# Start with an array of strings and create a new array with only the strings shorter than 4 letters.
# For example, ["a", "man", "a", "plan", "a", "canal", "panama"] becomes ["a", "man", "a", "a"].




# Start with an array of hashes and create a new array with only the hashes with names shorter than 6 letters (from the :name key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}, {name: "book", price: 4}].




# Start with an array of numbers and create a new array with only the numbers greater than or equal to 23.
# For example, [8, 23, 0, 44, 1980, 3] becomes [23, 44, 1980].




# Start with an array of strings and create a new array with only the strings that don't start with the letter "b".
# For example, ["big", "little", "good", "bad"] becomes ["little", "good"].




# Start with an array of hashes and create a new array with only the hashes with prices less than 10 (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "pencil", price: 1}, {name: "book", price: 4}].




# Start with an array of numbers and create a new array with only the odd numbers.
# For example, [2, 4, 5, 1, 8, 9, 7] becomes [5, 1, 9, 7].



# Codewars - Maximum Length Difference

def mxdiflg(a1, a2)

  return -1 if a1.empty? || a2.empty?

  a1max = -Float::INFINITY
  a1min = Float::INFINITY
  a2max = -Float::INFINITY
  a2min = Float::INFINITY

  a1.each do |str|
    l = str.length
    a1max = l if l > a1max
    a1min = l if l < a1min
  end

  a2.each do |str|
    l = str.length
    a2max = l if l > a2max
    a2min = l if l < a2min
  end

  spread1 = a1max - a2min
  spread2 = a2max - a1min

  return [spread1, spread2].max.to_s
end



def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?

  min1, max1 = a1.map(&:size).minmax
  min2, max2 = a2.map(&:size).minmax

  [max1 - min2, max2 - min1].max
end

arr1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
arr2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
p mxdiflg(arr1, arr2)

# Codewars - USD => CNY

def usdcny(usd)
  # yuan = multiply by 6.75. to two decimal places
  unrounded_yuan = usd * 6.75
  yuan = sprintf("%.2f", unrounded_yuan)
  # return yuan + sentence
  "#{yuan} Chinese Yuan"
end

def usdcny(usd)
  "#{"%.2f" %(usd * 6.75)} Chinese Yuan"
end

p usdcny(465)

def usdcny(usd)
  "#{"%.2f" %(usd * 6.75)} Chinese Yuan"
end

p usdcny(15)