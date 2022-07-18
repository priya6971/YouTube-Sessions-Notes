## Function definition
## Recurrence Relation: T(n) = T(n/3) + 4c
## Substitution Method: O(log_3 N)
def ternarySearch(arr, left, right, key):
  while left <= right:
    mid1 = left + (right - left)//3
    mid2 = right - (right - left)//3

    if(key == arr[mid1]):
      return mid1
    elif(key == arr[mid2]):
      return mid2
    elif key < arr[mid1]:
      ## 1st half
      return ternarySearch(arr, left, mid1-1, key)
    elif key > arr[mid2]:
      ## 3rd half
      return ternarySearch(arr, mid2 + 1, right, key)
    else:
      ## 2nd half
      return ternarySearch(arr, mid1 + 1, mid2 -1, key)
  return -1

## Driver code
arr = [2, 4, 6, 8, 10, 12]
key = 1
## Function calling
result = ternarySearch(arr, 0, len(arr)-1, key)
print("Key index is present at the location:", result)