# 03-loops4.md

# Start with an array of numbers and compute the sum of all the numbers.
# For example, [5, 10, 8, 3] becomes 26.

arr = [5, 10, 8, 3]

total = 0
i = 0
while i < arr.length
  total += arr[i]
  i += 1
end
# p total

# p arr.reduce(0) { |acc, num| acc + num }

# p arr.sum

# Start with an array of strings and combine them all into a single string.
# For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".

arr = ["volleyball", "basketball", "badminton"]

# p arr.reduce("") { |str, sport| str += sport }

# Start with an array of hashes and compute the sum of the prices (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.

items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
# p items.reduce(0) { |total, item| total += item[:price] }

sum = 0
items.each { |item| sum += item[:price] }
# p sum

# Start with an array of numbers and compute the the minimum number.
# For example, [5, 10, 8, 3, 9] becomes 3.

arr = [5, 10, 8, 3, 9]

min = Float::INFINITY
i = 0
while i < arr.length
  if arr[i] < min
    min = arr[i]
  end
  i += 1
end
# p min

min = arr.reduce(Float::INFINITY) do |low, num|
  num < low ? num : low
end
# p min

# p arr.min

# Start with an array of strings and compute the total length of all the strings.
# For example, ["volleyball", "basketball", "badminton"] becomes 29.

arr = ["volleyball", "basketball", "badminton"]

total = 0
arr.each do |str|
  total += str.length
end
p total

total = arr.reduce(0) { |total, str| total += str.length }
p total

# Start with an array of hashes and find the hash with the lowest price (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.


# Start with an array of numbers and compute product of all the numbers.
# For example, [5, 10, 8, 3] becomes 1200.


# Start with an array of strings and combine them all into a single string, separated by dashes.
# For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".


# Start with an array of hashes and find the hash with the shortest name (from the :name key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.


# Start with an array of numbers and compute the maximum number.
# For example, [5, 10, 8, 3] becomes 10.

