# 04-arrays-hashes2.md

# Make a hash to store a person's first name, last name, and email address. Then print each attribute on separate lines.

person = { "first" => "john", "last" => "plough", "email" => "jplough@gmail.com" }
# p person["first"]
# p person["last"]
# p person["email"]

person = { :first => "john", :last => "plough", :email => "jplough@gmail.com" }
# p person[:first]
# p person[:last]
# p person[:email]

person = { first: "john", last: "plough", email: "jplough@gmail.com" }
# p person[:first]
# p person[:last]
# p person[:email]

# Make an array of hashes to store the first name and last name for 3 different people. Then print out the first person's info.

people = [
  { first: "john", last: "plough" },
  { first: "seth", last: "plough" },
  { first: "bill", last: "plough" }
]

# p people[0][:first]
# p people[2][:first]

people = [
  { "first" => "john", "last" => "plough" },
  { "first" => "seth", "last" => "plough" },
  { "first" => "bill", "last" => "plough" }
]

# p people[0]["first"]
# p people[2]["first"]

# Make a hash to store prices for 3 different menu items. Then add a new menu item and price and print the hash to see the result.

menu = { fries: 2, burger: 3, milkshake: 4}
menu[:pie] = 1

# p menu

menu = { "fries" => 1, "pie" => 2, "burger" => 3, "milkshake" => 2.5 }
menu["greens"] = 1.5
menu[:crackers] = 0.5

# p menu

menu = { gar: 2, biu: 3 }
# p menu

# Make a hash to store a book's title, author, number of pages, and language. Then print each attribute on separate lines.

book = { title: "book title", author: "book author", pages: 300, language: "english" }
# p book[:title]
# p book[:author]
# p book[:pages]
# p book[:language]

book = { "title" => "Grapes of Wrath", "author" => "John Steinbeck", "pages" => 430, "language" => "english" }

# p book["title"]
# p book["author"]
# p book["pages"]
# p book["language"]
# Make an array of hashes to store the title and author for 3 different books. Then print out the third book's author.

books = [
  { title: "Grapes", author: "John" },
  { :title => "Of", :author => "Steinbeck" },
  { "title" => "Wrath", "author" => "bebe" }
]

# p books[0][:title]
# p books[1][:title]
# p books[2]["title"]


# Make a hash to store 3 different states and their capitals. Then add a new state and capital and print the hash to see the


# result.
# Make a hash to store a laptop's brand, model, and year. Then print each attribute on separate lines.


# Make an array of hashes to store the brand and model for 3 different laptops. Then print out the second laptop's model.


# Make a hash to store definitions for 2 different words. Then add a new word and definition and print the hash to see the result.


# Make a hash to store a shirt's brand, color, and size. Then print each attribute on separate lines.



# Codewars - Largest pair sum in array

# def largest_pair_sum(numbers)
#   highest = -Float::INFINITY
#   second = -Float::INFINITY
  
#   i = 0
#   while i < numbers.length
#     if numbers[i] > highest
#       second = highest
#       highest = numbers[i]
#     elsif numbers[i] > second
#       second = numbers[i]
#     end
#     i += 1
#   end
#   highest + second
# end


def largest_pair_sum(numbers)
  highest, second = -Float::INFINITY, -Float::INFINITY

  numbers.each do |num|
    if num > highest
      second = highest
      highest = num
    elsif num > second
      second = num
    end
  end

  highest + second

end


# p largest_pair_sum([1,2,3,4])
# p largest_pair_sum([4,3,2,1])

# p [1,2,5,3].max(2)
# p [1,2,5,3].sum

strokes = [1,2,5,3]
# p strokes.max(2).sum
# p strokes.max(5).sum

def is_lock_ness_monster(string)
  string.include?("3.50") || string.include?("three fifty") || string.include?("tree fiddy")
end

def is_lock_ness_monster(string)
  ["3.50", "three fifty", "tree fiddy"].any? { |phrase| string.include?(phrase) }
end

def xor(a, b)
  a && !b || !a && b
end

def cube_checker(volume, side)
  if side <= 0
    return false
  end
  side**3 == volume
end

def cube_checker(volume, side)
  side > 0 && side**3 == volume
end

def alphabet_war(fight)
  power = { 
    "w" => -4, "p" => -3, "b" => -2, "s" => -1, 
    "m" => 4, "q" => 3, "d" => 2, "z" => 1
  }

  total = 0

  fight.each_char { |char| total += power.fetch(char, 0) }

  if total < 0
    return "Left side wins!"
  elsif total > 0
    return "Right side wins!"
  else
    return "Let's fight again!"
  end

end


# make hash with values
  # if total is neg, left wins
  # if total is pos, right wins

def alphabet_war(fight)
  total = 0

  power = { 
    "w" => -4, "p" => -3, "b" => -2, "s" => -1, 
    "m" => 4, "q" => 3, "d" => 2, "z" => 1
  }

  fight.each_char { |char| total += power.fetch(char, 0) }

  fight.each_char do |letter|
    total -= 4 if letter == "w"
    total -= 3 if letter == "p"
    total -= 2 if letter == "b"
    total -= 1 if letter == "s"
    total += 1 if letter == "z"
    total += 2 if letter == "d"
    total += 3 if letter == "q"
    total += 4 if letter == "m"
  end

  if total < 0
    return "Left side wins!"
  elsif total > 0
    return "Right side wins!"
  else
    return "Let's fight again!"
  end

end


def predict_age(age_1, age_2, age_3, age_4, age_5, age_6, age_7, age_8)
  (Math.sqrt((age_1**2) + (age_2**2) + (age_3**2) + (age_4**2) + (age_5**2) + (age_6**2) + (age_7**2) + (age_8**2)) / 2).floor
end


def predict_age(*ages)
  (Math.sqrt(ages.sum { |age| age**2 }) / 2).floor
end