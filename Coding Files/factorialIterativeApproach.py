## Method definition
def factorialIterativeApproach(n):
    result = 1
    if n > 1:
        for i in range(1, n+1):
            result = result * i
        return result
    else:
        return -1

## Driver code
n = 5
result = factorialIterativeApproach(n)
print("Factorial using an iterative approach is:", result)