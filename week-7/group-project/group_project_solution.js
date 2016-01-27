/* As a user, I want to create a three functions that can take a group or numbers with an unknown length and do three things to them.
I want to be able to take the sum of all the numbers in the group with one function.
I want to be able to take the mean of all the numbers in the group with another function.
Lastly I want to take the median of all the numbers in the group with a final function. 
I want the functions to be named sum, mean, and median respectively.
Remember that the length of these numbers may be of varying sizes so take that in mind.
This last point will affect the median function mostly.
*/

Person 2
// Make three functions that can take an array of numbers (the length of the array is unkown) and do math with those funtions. One function takes the sum of the numbers, one takes the mean, one takes the median.

// SUM function:
// input: an array of integers
// logic:
//take the sum of all numbers in the array
// for each int in the array, add it to the previous sum
// output: integer that is the sum of those numbers

// MEAN function:
// input: an array of integers
// logic:
//add up all the numbers (see sum function above)
// count the numbers in the array
// mean is equal to the sum divided by the number of numbers
// return mean
// output: an int that is the mean of the input



// MEDIAN function

//background:
// with an odd number of values, median is the middle number
// with an evan number of values, median is the mean of the two values in the middle

// input: an array of integers
// logic:
// count the number of values in the array
// IF the count is odd,
// get the center index
// center index is count.length divided by two
// round down to get the center index (use the floor method)
// return the integer in the array index of that center we just calculated

// ELSE if the count is even,
// get the two numbers around the center index
// count.length divided by two and round up (use ceil)
// also count.length divided by two and round down (use floor)
// return the values of the two numbers in those positions
// take the sum of those two values (use the sum function from above)
// return the mean
// output: an integer (the mean)

Person 3

// Sum Function
function sum(numberArray){
  var sumOfArray = 0
  for(var i = 0; i < numberArray.length;i++){
    sumOfArray = sumOfArray + numberArray[i]
  };
  return sumOfArray
}

array = [1,2,3,4,5,6,7,8]

// console.log(sum(array));


// Mean Function

function mean(numberArray){
  var sumOfArray = 0
  var sizeofArray = numberArray.length

  for(var i = 0; i < sizeofArray ;i++){
    sumOfArray = sumOfArray + numberArray[i]
  };
  var mean = sumOfArray / sizeofArray
  return mean
}

array = [1,2,3,4,5,6,7,8]

// console.log(mean(array))


// Medium Function

function medium(numberArray){
var sizeofArray = numberArray.length
  if(sizeofArray % 2 !== 0){
    var oddCenterIndex = Math.round(sizeofArray / 2);
    return oddCenterIndex;
  } else if(sizeofArray % 2 === 0){
    var evenCenterIndex1 = Math.ceil(sizeofArray / 2);
    var evenCenterIndex2 = Math.floor(sizeofArray / 2); 
    return  (evenCenterIndex1 + evenCenterIndex2) / 2
  }

}
array = [1,2,3,4,5,6,7,8,3,1]
console.log(medium(array));

Person 4

// Sum Function
function sum(numberArray){
  var sumOfArray = numberArray.reduce(function(prevval, currentval) { return prevval + currentval; }, 0);
  return sumOfArray
}

array = [1,2,3,4,5,6,7,8]
console.log(sum(array));


// Mean Function

function mean(numberArray){
  var sumOfArray = 0
  var arrayLength = numberArray.length

  for(var i = 0; i < arrayLength ;i++){
    sumOfArray += numberArray[i]
  };
  var mean = sumOfArray / arrayLength
  return mean
}

// array = [1,2,3,4,5,6,7,8]
// console.log(mean(array))


// Medium Function

function medium(numberArray){
var sizeofArray = numberArray.length
  if(sizeofArray % 2 !== 0){
    var oddCenterIndex = Math.round(sizeofArray / 2);
    return oddCenterIndex;
  } else if(sizeofArray % 2 === 0){
    var evenCenterIndex1 = Math.ceil(sizeofArray / 2);
    var evenCenterIndex2 = Math.floor(sizeofArray / 2); 
    return  (evenCenterIndex1 + evenCenterIndex2) / 2
  }

}
// array = [1,2,3,4,5,6,7,8,3,4]
// console.log(medium(array));


/*
======================================
            User Stories
======================================
As a user, I want to be able to take the sum of an array of numbers when I call a function called sum.
As a user, I want to be able to take the mean of an array of numbers when I call a function called mean.
As a user, I want to be able to take the median of an array of numbers when I call a function called medium.
*/




Summary

/* After running the tests, we failed on tests 7 and 9. Test 7 failed because median became medium somewhere along the line.
Test 9 failed because the even number array's should have been 5.5 but it was returning 4.
