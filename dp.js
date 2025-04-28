// find sum (use reduce)
// find min
// find max
// maxSum = sum - min
// minSum = sum - max

function miniMaxSum(arr) {
  let sum = arr.reduce((acc, curVal) => acc + curVal, 0);
  let min = Math.min(...arr);
  let max = Math.max(...arr);

  let maxSum = sum - min;
  let minSum = sum - max;

  console.log(`${minSum} ${maxSum}`);
}

miniMaxSum([1, 3, 5, 7, 9]);
