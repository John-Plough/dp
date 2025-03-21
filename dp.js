// 04-arrays-hashes2.md

// Make a hash to store a person's first name, last name, and email address. Then print each attribute on separate lines.

const person = { first: "john", last: "plough", email: "jplough@gmail.com" };

// console.log(person.first);
// console.log(person.last);
// console.log(person.email);
// console.log(person["email"]);

// Make an array of hashes to store the first name and last name for 3 different people. Then print out the first person's info.

const people = [
  { first: "john", last: "plough" },
  { first: "seth", last: "plough1" },
  { first: "bill", last: "plough2" },
];

// console.log(people[0]);
// console.log(people[1].first);
// console.log(people[2]["last"]);

// Make a hash to store prices for 3 different menu items. Then add a new menu item and price and print the hash to see the result.

const menu = { fries: 2, burger: 3, steak: 5 };
menu.pie = 3;
menu["milkshake"] = 3;
// console.log(menu);

// Make a hash to store a book's title, author, number of pages, and language. Then print each attribute on separate lines.

const book = { title: "Grapes", author: "John", pages: 444, language: "english" };

// console.log(book.title);
// console.log(book.author);
// console.log(book.pages);
// console.log(book["language"]);

// Make an array of hashes to store the title and author for 3 different books. Then print out the third book's author.

const books = [
  { title: "The Grapes", author: "John" },
  { title: "Of", author: "C" },
  { title: "Wrath", author: "Steinbeck" },
];

console.log(books[0].title);
console.log(books[1]["title"]);
console.log(books[2].author);

// Make a hash to store 3 different states and their capitals. Then add a new state and capital and print the hash to see the

// result.
// Make a hash to store a laptop's brand, model, and year. Then print each attribute on separate lines.

// Make an array of hashes to store the brand and model for 3 different laptops. Then print out the second laptop's model.

// Make a hash to store definitions for 2 different words. Then add a new word and definition and print the hash to see the result.

// Make a hash to store a shirt's brand, color, and size. Then print each attribute on separate lines.
