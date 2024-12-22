```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A;
   A(1) := 100;
   -- Expected B(1) = 1, but got 100
   Put_Line(Integer'Image(B(1)));
   --This shows that the assignment doesn't create a copy, but a reference. So changing A also changes B
end Example;
```