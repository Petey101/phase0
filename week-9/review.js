 // Pseudocode
 // 1. Create a method superFizzBuzz which takes an array for an argument.
 // 2. Create an array to put in fizzbuzzed array.
 // 3. Iterate each element of the array to see if they are divisible 3,5, or 15.
 // 4. For elements divisible by 15 replace with "FizzBuzz".
 // 5. For elements divisible by 5 replace with "Buzz".
 // 6. For elements divisible by 3 replace with "Fizz".
 // 7. Return fizzbuzzed array.


 function superFizzBuzz(array){
 for (var i = 0 ; i < array.length; i++){
  if (array[i] % 15 === 0 ){
    array[i] = "FizzBuzz"; }
  else if (array[i] % 5 === 0 ){
    array[i] = "Buzz"; }
  else if(array[i] % 3 === 0 ){
    array[i] = "Fizz"; }
  else {
    array[i];
   };
 };
  return array
};
var array = [1,2,3,4,5,6,7,8,9,100,15,30,45];
console.log(superFizzBuzz(array));


// What concepts did you solidify in working on this challenge? 
// Iterating in Javascript was solidified in this challenge.

// What was the most difficult part of this challenge?
// The hardest part of this challenge was making sure I had all the Javascript syntax correct.

// Did you solve the problem in a new way this time?
// No, the problem was mostly solved in the same way as my Ruby solution.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudocode was mostly the same as my Ruby pseudocode.