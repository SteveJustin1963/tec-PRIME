\\ work in progress

: P                                   \\ (prime) ( n -- )
   " 2 <(')()  exit then
   " 2 = (')() exit then
   " 3 / ' 0= (')() exit then
   " 3 begin " " * >()()  over / ' 0= until
   " " * >()()  if drop exit then
   drop
;

: C                                    \\ prime-C ( n -- n' )
   2 begin " P until
   drop
;

: R                                    \\ R  ( n -- )
   1 c!                                 \\var C
   2 . ." Prime number #" C@ . ." : " . cr
   2 C !
   begin " (prime) if
      C@ 1+ C!
      ." Prime number #" C@ . ." : " . cr
   then
   " >()()  until
   drop
;

: main ( -- )
   ." What is the range ? "
   begin
      read-line number>()() value
      " 2 <()()  drop exit then
      break
   again
   cr
   R 
   cr
   ." There are " prime-C ." primes in the range of 2 and " . ."\n"
;
