Just as numbers can be represented in a positional notation as sums of multiples of the powers of ten (decimal) or two (binary); all the positive integers can be represented as the sum of one or zero times the distinct members of the Fibonacci series.

Recall that the first six distinct Fibonacci numbers are: 1, 2, 3, 5, 8, 13.
The decimal number eleven can be written as

  0*13 + 1*8 + 0*5 + 1*3 + 0*2 + 0*1

or 010100 in positional notation where the columns represent multiplication by a particular member of the sequence. Leading zeroes are dropped so that eleven decimal becomes 10100.

10100 is not the only way to make eleven from the Fibonacci numbers however;

  0*13 + 1*8 + 0*5 + 0*3 + 1*2 + 1*1

or 010011 would also represent decimal 11. For a true Zeckendorf number there is the added restriction that no two consecutive Fibonacci numbers can be used which leads to the former unique solution.

Your task is to generate and show here a table of the Zeckendorf number representations of the decimal numbers zero to twenty, in order.

[Source http://rosettacode.org]

Did this kata with Rspec, but here is an example of a Cucmber feature:

Feature: zeckendorf calculator

Scenario Outline: all the numbers from 0 to 20
  Given decimal is <decimal>
  Then expect <zeckendorf>
  Examples:
  |decimal|zeckendorf|
  | 0     | 0        |
  | 1     | 1        |
  | 2     | 10       |
  | 3     | 100      |
  | 4     | 101      |
  | 5     | 1000     |
  | 6     | 1001     |
  | 7     | 1010     |
  | 8     | 10000    |
  | 9     | 10001    |
  | 10    | 10010    |
  | 11    | 10100    |
  | 12    | 10101    |
  | 13    | 100000   |
  | 14    | 100001   |
  | 15    | 100010   |
  | 16    | 100100   |
  | 17    | 100101   |
  | 18    | 101000   |
  | 19    | 101001   |
  | 20    | 101010   |
