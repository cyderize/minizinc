/***
---
!Test
solvers: [gecode]
options:
  param-file: './spec/unit/general/test_param_file.json'
expected: !Result
  status: SATISFIED
  solution: !Solution
    x: 2
---
!Test
solvers: [gecode]
expected: !Result
  status: OPTIMAL_SOLUTION
  solution: !Solution
    x: 4
***/

var 1..10: x;

constraint x mod 2 = 0;

solve maximize x mod 5;