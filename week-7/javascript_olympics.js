 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.



// Warm Up




// Bulk Up
function winner(array){
  for(var x = 0; x < array.length; x++)
    array[x].win = array[x].name + " won the " + array[x].event + "!";
}
// Driver Code
var athlete1 = {
  name: "Sarah Hughes",
  event: "Ladies' Singles"
}
var athlete2 = {
 name: "John Doe",
 event: "Marathon"
}
var array = [athlete1, athlete2]
winner(array)
console.log(array[0].win);


// Jumble your words
function flip(string){
  return string.split('').reverse().join('');
}

console.log(flip("!sdrow ruoy elbmuJ"))


// 2,4,6,8
function getEven(array) {
  var evens = [];
  for(var x = 0; x < array.length; x++)  
    if (array[x] % 2 === 0) {
      evens.push(array[x]);
    } 
  return evens;
}

var someNums = [1, 15, 3, 4, 9, 18]
console.log(getEven(someNums))

"We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I became more comfortable iterating over elements in javascript this challenge.

What are constructor functions?
Constructor functions seem to be able to take in new values for variables. 

How are constructors different from Ruby classes (in your research)?
The variables that the constuctor attaches to becomes an object that is independant from any other variables that use the same constructor. 
Classes in ruby seem to be a seperate entity that will change the class itself using writer methods.


*/