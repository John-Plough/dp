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

p books[0][:title]
p books[1][:title]
p books[2]["title"]


# Make a hash to store 3 different states and their capitals. Then add a new state and capital and print the hash to see the


# result.
# Make a hash to store a laptop's brand, model, and year. Then print each attribute on separate lines.


# Make an array of hashes to store the brand and model for 3 different laptops. Then print out the second laptop's model.


# Make a hash to store definitions for 2 different words. Then add a new word and definition and print the hash to see the result.


# Make a hash to store a shirt's brand, color, and size. Then print each attribute on separate lines.

