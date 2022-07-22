# Python3 Program for recursive binary search.
# Returns index of x in arr if present, else -1
def binarySearch(arr, i, j, x):
    # Check base case
    if j >= i:
        mid = i + (j - i) // 2
        # If element is present at the middle itself
        if arr[mid] == x:
            return mid
        # If element is smaller than mid, then it
        # can only be present in left subarray
        elif arr[mid] > x:
            return binarySearch(arr, i, mid - 1, x)
        # Else the element can only be present
        # in right subarray
        else:
            return binarySearch(arr, mid + 1, j, x)

    else:
        # Element is not present in the array
        return -1


# Driver Code
arr = [20, 30, 45, 50, 70]
key = 75

# Function call
result = binarySearch(arr, 0, len(arr) - 1, key)
print("Element is present at index", result)


