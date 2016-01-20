// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/* The function with input an integer. Iterate over each number. 
If the index plus one % 3 is equal to zero, add a comma after the number.
 Otherwise, just add the number. 
 Return the output which will be a string of the number separated by commas. 
*/

// Initial Solution

var numCommas = function(number) {
 var num = String(number);
 var output = ""
  for (var i = num.length - 1; i >= 0 ; i --){
    if ((num.length - i - 1) % 3 === 0  && output != ''){
     output = output + ','
    }
    output = output + num[i] 
  }
  var output2 = ''
  for (var i = output.length -1; i >= 0; i --) {
    output2 = output2 + output[i]
  }
  return output2
}

// Refactored Solution
var numCommas = function(number) {
 var num = String(number);
 var output = ""
  for (var i = num.length - 1; i >= 0 ; i --){
    if ((num.length - i - 1) % 3 === 0  && output != ''){
     output += ','
    }
    output += num[i] 
  }
   return output.split('').reverse().join('')
}

// // Your Own Tests (OPTIONAL)


console.log(numCommas(1000000))

// Reflection
/*What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
Our approach was mostly the same. We just had to find a way to translate our logic into a different language.

What did you learn about iterating over arrays in JavaScript?
Iterating over arrays in javascript seems a little more involved in JavaScript. There are more things you have to tell the function to do because there is no each method.

What was different about solving this problem in JavaScript?
The syntax was different but the logic was mostly the same.

What built-in methods did you find to incorporate in your refactored solution?
We used split reverse and join to reverse the number at the end.

*/