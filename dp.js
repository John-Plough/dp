function plusMinus(arr) {
  let pos = 0;
  let neg = 0;
  let zero = 0;

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      pos++;
    } else if (arr[i] < 0) {
      neg++;
    } else {
      zero++;
    }
  }
  console.log((pos / arr.length).toFixed(6));
  console.log((neg / arr.length).toFixed(6));
  console.log((zero / arr.length).toFixed(6));
}

function plusMinus(arr) {
  let pos = 0;
  let neg = 0;
  let zero = 0;
  let len = arr.length;

  for (const num of arr) {
    if (num > 0) pos++;
    else if (num < 0) neg++;
    else zero++;
  }

  console.log((pos / len).toFixed(6));
  console.log((neg / len).toFixed(6));
  console.log((zero / len).toFixed(6));
}

plusMinus([-4, 3, -9, 0, 4, 1]);
