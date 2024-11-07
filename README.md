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


 ### ref
 - https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
 - 
