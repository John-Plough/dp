// 03-loops4.md

// Start with an array of numbers and compute the sum of all the numbers.
// For example, [5, 10, 8, 3] becomes 26.

const arr = [5, 10, 8, 3];

let total = arr.reduce((acc, num) => acc + num, 0);
// console.log(total);

const sum = arr.reduce(function (acc, num) {
  return acc + num;
}, 0);
// console.log(sum);

// Start with an array of strings and combine them all into a single string.
// For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".

const sports = ["volleyball", "basketball", "badminton"];

const string = sports.reduce((str, sport) => str + sport, "");
// console.log(string);
const string1 = sports.join("");
// console.log(string1);

// Start with an array of hashes and compute the sum of the prices (from the :price key).
// For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.

const items = [
  { name: "chair", price: 100 },
  { name: "pencil", price: 1 },
  { name: "book", price: 4 },
];

total = items.reduce((total, item) => (total += item.price), 0);
// console.log(total);

let sum1 = 0;
for (let i = 0; i < items.length; i++) {
  sum1 += items[i].price;
}
// console.log(sum1);

// Start with an array of numbers and compute the the minimum number.
// For example, [5, 10, 8, 3, 9] becomes 3.

const myNums = [5, 10, 8, 3, 9];
let myMin = Infinity;

for (let i = 0; i < myNums.length; i++) {
  if (myNums[i] < myMin) {
    myMin = myNums[i];
  }
}
// console.log(myMin);

let min = myNums.reduce((low, num) => (num < low ? num : low), Infinity);
// console.log(min);

// Start with an array of strings and compute the total length of all the strings.
// For example, ["volleyball", "basketball", "badminton"] becomes 29.

const games = ["volleyball", "basketball", "badminton"];
total = games.reduce((sum, game) => (sum += game.length), 0);

let letters = 0;
for (let i = 0; i < games.length; i++) {
  letters += games[i].length;
}
// console.log(letters);

// console.log(total);

// Start with an array of hashes and find the hash with the lowest price (from the :price key).
// For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.

// Start with an array of numbers and compute product of all the numbers.
// For example, [5, 10, 8, 3] becomes 1200.

// Start with an array of strings and combine them all into a single string, separated by dashes.
// For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

// Start with an array of hashes and find the hash with the shortest name (from the :name key).
// For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

// Start with an array of numbers and compute the maximum number.
// For example, [5, 10, 8, 3] becomes 10.
