: P                                   \\ P  ( n -- )
   " 2 <(')()  exit then
   " 2 = (')() exit then
   " 3 / ' 0= (')() exit then
   " 3 begin " " * >()()  over / ' 0= until
   " " * >(')()  exit then
   ' 
;

: C                                    \\ prime-C ( n -- n' )
   2 begin " P until
   ' 
;

: R                                    \\ R  ( n -- )
   1 c!                                 \\var c
   2 . ." Prime number #" c@ . ." : " . cr
   2 c!
   begin " P  if
      c@ 1+ c!
      ." Prime number #" c@ . ." : " . cr
   then
   " >()()  until
   ' 
;

: main ( -- )
   ." What is the range ? "
   begin
      read-line number>()() value
      " 2 <()()  '  exit then
      break
   again
   cr
   R 
   cr
   ." There are " prime-C ." primes in the range of 2 and " . ."\n"
;
