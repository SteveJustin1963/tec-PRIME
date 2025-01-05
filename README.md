# tec-PRIME
![image](https://github.com/user-attachments/assets/eaa363c8-2bb4-482f-86cd-ed312556867f)



The **Sieve of Eratosthenes** is an ancient algorithm used to find all prime numbers up to a specified integer. It is efficient and simple, especially for smaller numbers. The algorithm works by iteratively marking the multiples of each prime number, starting with the smallest prime number (2). Here's a step-by-step explanation:

### Step-by-Step Process
1. **Create a list of numbers:**
   - Write down all the numbers from 2 up to the maximum number (let’s call it *n*) you want to check for primality.
   
2. **Start with the smallest prime (2):**
   - The first number in the list is 2, which is a prime number. Highlight or select this number.
   
3. **Eliminate multiples:**
   - Cross out all multiples of 2 (4, 6, 8, …) in the list. These numbers cannot be prime because they are divisible by 2.
   
4. **Move to the next unmarked number:**
   - The next unmarked number in the list is 3, which is the next prime. Highlight 3, and then cross out all its multiples (6, 9, 12, …).
   
5. **Repeat the process:**
   - Continue this process for the next unmarked number in the list (5, then 7, and so on). Each time, highlight the number as prime and cross out its multiples.
   
6. **Stop when you reach the square root of *n*:**
   - You can stop when you reach numbers whose square is greater than *n* because smaller multiples of higher numbers would have already been crossed out.

7. **Remaining numbers are prime:**
   - The numbers that remain unmarked in the list after you complete the process are all the prime numbers up to *n*.

### Example: Finding Primes Up to 30
1. Write down the numbers: 2, 3, 4, ..., 30.
2. Start with 2:
   - Cross out all multiples: 4, 6, 8, ..., 30.
3. Next is 3:
   - Cross out all multiples: 6, 9, 12, ..., 30.
4. Next is 5:
   - Cross out all multiples: 10, 15, ..., 30.
5. Continue with 7 (since 4, 6 are already crossed out):
   - Cross out its multiples: 14, 21, ..., 28.
6. You stop here because the next prime, 11, squared (121) is larger than 30.
7. The remaining numbers (2, 3, 5, 7, 11, 13, 17, 19, 23, 29) are the prime numbers up to 30.

### Efficiency
- The Sieve of Eratosthenes is efficient because:
  - It uses a straightforward process of elimination.
  - It only iterates through numbers up to the square root of *n*, reducing the number of operations.
  - The time complexity is **O(n log log n)**, which is much faster than checking each number individually.

### Visual Representation
The algorithm is often represented visually as a grid of numbers where multiples are crossed out systematically. It provides a clear way to see how primes are determined.

### Limitations
- The algorithm uses memory proportional to the size of the range, so for very large numbers, it may require significant memory.
- For extremely large ranges, other algorithms (like the **Segmented Sieve**) are more suitable, as they divide the range into manageable segments.

I'll break down how the Sieve of Eratosthenes program works in MINT step by step:

1. Initialization:
```mint
100 n!            # Store 100 in variable n (our upper limit)
n /A f!           # Allocate array f of size n for our flags
0 t!              # Initialize t (total prime counter) to 0
0 c!              # Initialize c (column counter) for display formatting
```

2. Initial Array Setup:
```mint
n (               # Loop n times
  1 f /i ?!       # Set each position in array f to 1 (potential prime)
)                 # /i is the loop counter
```

3. Sieve Process:
```mint
2 p!              # Start with first prime p = 2
n (               # Loop through numbers up to n
  f p ? 1 = (     # If number p is marked as prime (flag = 1)
    p p * k!      # k = p * p (start marking from p squared)
    /U (          # Unlimited loop
      k n < /W    # While k is less than n
      0 f k ?!    # Mark k as not prime (set flag to 0)
      k p + k!    # Move to next multiple of p
    )
  )
  p 1+ p!        # Move to next number
)
```

4. Display Results:
```mint
2 p!              # Reset p to 2 for printing
n (               # Loop through numbers again
  f p ? 1 = (     # If number is marked as prime
    p .           # Print the number
    ` `          # Print a space
    c 1+ c!      # Increment column counter
    c 10 = (      # If we've printed 10 numbers
      /N         # Print newline
      0 c!       # Reset column counter
    )
    t 1+ t!      # Increment total prime counter
  )
  p 1+ p!        # Move to next number
)
```

5. Print Summary:
```mint
/N /N             # Print two newlines
`Found ` t . ` primes` /N  # Print total count of primes found
```

How the Algorithm Works:

1. **Array Initialization**: 
   - Creates an array where all numbers are initially marked as potential primes (1)
   - Size is determined by input number n

2. **Sieve Process**:
   - Starting with p=2 (first prime)
   - For each prime number found:
     - Mark all its multiples as non-prime (0)
     - Start marking from p*p since smaller multiples were already marked
     - Continue until reaching limit n

3. **Display**:
   - Loop through array again
   - If a number is still marked as 1, it's prime
   - Print in columns of 10 for readability
   - Keep count of total primes found

Example Output for 100:
```
Prime numbers up to 100:
2 3 5 7 11 13 17 19 23 29
31 37 41 43 47 53 59 61 67 71
73 79 83 89 97

Found 25 primes
```

Key MINT Features Used:
- `/A` for array allocation
- `/i` for loop counter
- `/U` for unlimited loop
- `/W` for while condition
- `?` for array access
- `!` for variable/array assignment
- `.` for decimal number output




 ### ref
 - https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
 - 
