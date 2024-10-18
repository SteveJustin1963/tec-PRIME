// Define the maximum number as a constant
8190 m !

// Allocate memory for the flags array
:X
    m 1 + /A a !  // Allocate m+1 bytes and store the pointer in 'a'
;

// Initialize the flags array
:I
    m 1 + (  // Loop from 0 to m+1
        1 a /i + \!  // Set the value at flags[/i] to 1 (initialize as prime)
    )
;

// Sieve of Eratosthenes algorithm
:S
    2 n !  // Start with n = 2 (smallest prime number)
    /U (
        n n * m <= /W  // Continue while n * n is less than or equal to m
        a n + \? (  // Check if the current number n is marked as prime
            n n * p !  // Set p to n * n (starting point for marking multiples)
            /U (
                p m <= /W  // Continue while p is less than or equal to m
                0 a p + \!  // Set flags[p] to 0 (mark as non-prime)
                p n + p !  // Increment p by n (move to the next multiple of n)
            )
        )
        n 1 + n !  // Increment n to check the next number
    )
;

// Print the prime numbers from the flags array
:P
    `Primes: ` /N  // Print the label "Primes:" followed by a newline
    2 n !  // Start with n = 2 (smallest prime number)
    /U (
        n m <= /W  // Continue while n is less than or equal to m
        a n + \? (  // Check if the value at flags[n] is 1 (indicating prime)
            n .  // Print the prime number
            ` `  // Print a space
        )
        n 1 + n !  // Increment n to check the next number
    )
    /N  // Print a newline at the end
;

// Main function to find and print prime numbers
:M
    X  // Allocate memory for flags
    I  // Initialize the flags array
    S  // Run the Sieve of Eratosthenes algorithm
    P  // Print the prime numbers
;

// Execute the main function
M
