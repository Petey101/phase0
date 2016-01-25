
// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.
// Sum Function
function sum(numberArray){
  var sumOfArray = numberArray.reduce(function(prevval, currentval) { return prevval + currentval; }, 0);
  return sumOfArray
}

// array = [1,2,3,4,5,6,7,8]
// console.log(sum(array));


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


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)