// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = (3);
console.log(number + number);



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var hashtag = "#"; hashtag.length <= 7; hashtag += "#")
  console.log(hashtag);


// Functions

prompt("Whats your favorite food?", "..."); alert("That's my Favorite too!");

// Complete the `minimum` exercise.
var min = function(x,y) {
    if (x > y)
      return y;
  else
    return x;
};

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["Peter", 29, "calamari", "I love to wear classic sneakers"]
