# 05-custom-methods-classes3.md

# Write a Song class with attributes and reader/writer methods for name, artist, and duration. Then write a method that prints the name, artist, and duration in a single sentence.


# Write a Rectangle class with attributes and reader/writer methods for width and height. Then write a method that returns the area of the rectangle.


# Write a Person class with attributes and reader/writer methods for name and age. Then write a method that returns the person's name in all capital letters.


# Write a Coordinate class with attributes and reader/writer methods for latitude and longitude. Then write a method that prints out the latitude and longitude in a single sentence.


# Write an Account class with attributes and reader/writer methods for name and balance. Then write a method that prints a warning if the balance is below $100.


# Write a Movie class with attributes and reader/writer methods for title, director, and year. Then write a method that prints out the attributes in a single sentence.


# Write a Car class with attributes and reader/writer methods for make, model, year, and color. Then write a method that returns the make and model as a single sentence in all lowercase letters.


# Write a Point class with attributes and reader/writer methods for x, y, and z coordinates. Then write a method that returns true if all 3 numbers are positive, otherwise it returns false.


# Write a Book class with attributes and reader/writer methods for title, author, and year. Then write a method that returns "Classic" if the book is older than 2000, otherwise it returns "Modern".


# Write a Plant class with attributes and reader/writer methods for name, size, and price. Then write a method that prints out the attributes in a single sentence.

# Codewars - Remove Odd Hashes

def remove_odd_hashes(array, key_1, key_2)
  array.select { |hash| (hash[key_1] + hash[key_2]).even? }
end

# p remove_odd_hashes([ {a: 5, b: 5}, 
# {a: 3, b: 4}, 
# {a: 2, b: 0}, 
# {a: 2, b: 1}], 
# :a, :b)

# Codewars - Sum of Cubes

def sum_cubes(n)
  total = 0
  i = 1

  while i <= n
    total += (i*i*i)
    i += 1
  end

  total
end

def sum_cubes(n)

end

def sum_cubes(n)
  (1..n).inject(0) { |sum, i| sum + i**3 }
end

def sum_cubes(n)
  (1..n).sum { |i| i**3 }
end

# Codewars - CSV representation of array

def to_csv_text(array)
  output = ''
  i = 0

  while i < array.length
    j = 0
    while j < array[i].length
      output += array[i][j].to_s
      output += ',' if j < array[i].length - 1
      j += 1
    end

    output += "\n" if i < array.length - 1
    i += 1
  end

  output
end


def to_csv_text(array)
  array.map { |row| row.join(',') }.join("\n")
end

# puts to_csv_text([[1, 2, 3], [4, 5, 6]])