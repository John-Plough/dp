# Start with an array of numbers and create a new array with only the numbers less than 20.
# For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].

arr = [2, 32, 80, 18, 12, 3]
# p arr.select { |num| num < 20 }

# Start with an array of strings and create a new array with only the strings that start with the letter "w".
# For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].

arr = ["winner", "Winner", "chicken", "dinner"]
ws = []
arr.each do |word|
  if word[0].downcase == 'w'
    ws << word
  end
end
# p ws

# p arr.select { |word| word.downcase.start_with? "w" }
# p arr.select { |word| word[0].downcase == "w" }

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
# p ws

words = ["winner", "winner", "Winner", "chicken", "dinner"]
ws = []

words.each do |word| 
  if word[0].downcase == 'w'
    ws << word
  end
end
# p ws

words = ["winner", "winner", "Winner", "chicken", "dinner"]
ws = words.select { |word| word[0].downcase == 'w' }
# p ws
wss = words.select do |word|
  word[0].downcase == 'w'
end
# p wss

words = ["winner", "winner", "Winner", "Winner", "chicken", "dinner"]
ws = words.select { |word| word.downcase.start_with? 'w' }
# p ws

# Start with an array of hashes and create a new array with only the hashes with prices greater than 5 (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}].

items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

exp = []
items.each do |item|
  if item[:price] > 5
    exp << item
  end
end
# p exp

# p items.select { |item| item[:price] > 5 }


# Start with an array of numbers and create a new array with only the even numbers.
# For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].

arr = [2, 4, 5, 1, 8, 9, 7]

evens = []
arr.each do |num|
  if num % 2 == 0
    evens << num
  end
end
# p evens

# p arr.select { |num| num.even? }

# Start with an array of strings and create a new array with only the strings shorter than 4 letters.
# For example, ["a", "man", "a", "plan", "a", "canal", "panama"] becomes ["a", "man", "a", "a"].

arr = ["a", "man", "a", "plan", "a", "canal", "panama"]
p arr.select  { |str| str.length < 4 } 


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