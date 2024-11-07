// MINT2  
// Input n on stack, outputs formatted primes

:P
// --- Initialize ---
n!               // Get limit from stack
n /A f!          // Allocate array dynamically
0 t!             // Prime counter
0 c!             // Column counter

// --- Print header ---
`Prime numbers up to ` n . `:` /N

// --- Mark all as potential primes ---
n ( 
    1 f /i ?!    // Set all flags to 1
)

// --- Sieve process ---
n 2 - (          // Loop p = 2 to n-1
    /i 2 + p!    // Current number p
    f p ? 1 = (  // If p is marked prime
        // Mark all multiples as non-prime
        p p * k! // Start at p*p
        /U (     // Unlimited loop
            k n < /W     // While k < n
            0 f k ?!     // Mark as non-prime
            k p + k!     // Next multiple
        )
    )
)

// --- Print primes with formatting ---
n 2 - (          // Loop through all numbers
    /i 2 + p!    // Get current number
    f p ? 1 = (  // If it's prime
        p 10 < ( // Single digit
            ` `  // Extra space
        )
        p .      // Print prime
        ` `      // Space after number
        
        // Column handling
        c 1+ c!  // Increment column
        c 10 = ( // Every 10 numbers
            /N   // New line
            0 c! // Reset column
        )
        
        // Count primes
        t 1+ t!  // Increment total
    )
)

// --- Print summary ---
/N /N
`Found ` t . ` primes` /N
;

// Example usage: 100 P
