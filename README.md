# The Taneb Language

A language designed out of boredom, with no real purpose and probably not Turing-complete? 

Thanks to [Taneb](https://github.com/Taneb) for his kind permission to use this name. 

## Syntax
Five operators (T, A, N, E, B), register numbers start with R (e.g. R0, R1).

**Comment**: `/*This is a comment.*/` 

**Print**: `E R0;` Print the value in register R0.

**Add**: `10 A R0;` Add 10 to register R0.

**If**: `T R1 <10 A R2> <-10 A R2>;` If value of R1 is 0 then add 10 to R2, otherwise subtract 10.

**While**: `N R2 <E R0; -1 A R2>;` While value of R2 is 0, print value in R0 and decrement R2.

**Read**: `B R3;` Block for keyboard input, and save input value into register R3.

## Lexing and Parsing
Constructed with [BNFC](http://bnfc.digitalgrammars.com/), lexical information is available in `/BNFC/Taneb.cf`.
To lex and parse a program:

    cd BNFC
    ghci
    :load ParTaneb
    pStm . myLexer $ "100 A R0

## Semantics
Not done yet, currently only have the front end working.

The run-time environment shall provide hypothetically unlimited number of integer registers (R0, R1, R2, ...) with unbounded length. This is certainly not true in real world, but in theory, maybe.

## Compilation
The plan is to compile Taneb programs into C, and let C toolchains take over from there.

## Example Program
Taneb programs have extension `.tb`.

Example (`/Examples/Hello.tb`):

    721011081081118711111410810033 A R0 ; /* ASCII for 'HelloWorld!' */ 
    E R0

