```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
   function Deep_Copy(Arr : My_Array) return My_Array is
      Result : My_Array;
   begin
      Result := Arr;
      return Result;
   end Deep_Copy;
begin
   B := Deep_Copy(A);
   A(1) := 100;
   Put_Line(Integer'Image(B(1))); -- Now correctly outputs 1
end Example;
```