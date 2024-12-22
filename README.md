# Ada Array Assignment Bug
This repository demonstrates a common, yet subtle bug in Ada related to array assignments.  When assigning one array to another, Ada performs a shallow copy instead of a deep copy.  This means that both arrays refer to the same underlying data, leading to unexpected behavior if the original array is modified.

The `bug.ada` file illustrates this issue.  The `bugSolution.ada` file shows a solution which properly creates a deep copy of the array. 

This example highlights the importance of understanding Ada's array assignment semantics to avoid this type of error.