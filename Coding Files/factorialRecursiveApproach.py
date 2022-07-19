## Method definition
def factorialRecursiveApproach(n):
    result = 1
    if n == 0 or n == 1:
        return 1
    elif n < 0:
        return -1
    else:
        result = n * factorialRecursiveApproach(n-1)
        return result

## Driver code
n = 5
result = factorialRecursiveApproach(n)
print("Factorial using an recursive approach is:", result)