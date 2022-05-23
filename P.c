; This code is finding the prime numbers in a given range. The range is input by the user. 
; The code starts at 3 and checks each number in the range to see if it is evenly divisible by any 
; number between 2 and the square root of the number. If the number is not evenly divisible by any number, 
; it is a prime number and is printed out.

   
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
   int Range, Number, Divisor, Count;

   printf("What is the range ? ");
   do
   {
      scanf("%d", &Range);
      if (Range >= 2)
         break;
      printf("The range value must be >= 2.  Your input = %d\n", Range);
      printf("Please try again: ");
   } while (1);

   Count = 1;
   printf("\n");
   printf("Prime number #%d: %d\n", Count, 2);
   for (Number = 3; Number <= Range; Number += 2)
   {
      Divisor = 3;
      do
      {
         if (Divisor*Divisor > Number || Number%Divisor == 0)
            break;
         Divisor += 2;
      } while (1);

      if (Divisor*Divisor > Number)
      {
         Count++;
         printf("Prime number #%d: %d\n", Count, Number);
      }
   }

   printf("\n");
   printf("There are %d primes in the range of 2 and %d\n", Count, Range);

   return 0;
}
