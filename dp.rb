# 3) Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
# 
#[1,2,3] -> [3,2,1]
#[] -> []
#
#loop
#[3,2,1]
#
#[1,2,3,4]
#
#i = arr.length - 1
#while arr.lenth >= 0
#put el in results arr
#
#return results arr
#[4,3,2,1]
#
def reverse_arr(arr)
  reversed = []

  i = arr.length - 1
  while i >= 0
    if arr[i] = 
    reversed << arr[i]
    i -= 1
  end

  reversed
end

p reverse_arr([1,2,3,4])
p reverse_arr(["frog"])