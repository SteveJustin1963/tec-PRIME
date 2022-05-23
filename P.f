
: main
   2 constant Range
   2 constant Number
   3 constant Divisor
   1 constant Count
   ." What is the range ? "
   begin
      read-line
      Range @ atoi
      2 < if
         ." The range value must be >= 2.  Your input = "
         Range @ .
         ." Please try again: "
      else
         break
      then
   again
   cr
   ." Prime number #"
   Count @ .
   .": "
   2 .
   begin
      Number @ Range @ > if
         leave
      then
      Divisor @ Divisor @ * Number @ mod 0= if
         leave
      then
      Divisor @ 2+ to Divisor
   again
   Divisor @ Divisor @ * Number @ > if
      Count @ 1+ to Count
      ." Prime number #"
      Count @ .
      .": "
      Number @ .
   then
   Number @ 2+ to Number
   cr
   ." There are "
   Count @ .
   ." primes in the range of 2 and "
   Range @ .
   cr
;
 
