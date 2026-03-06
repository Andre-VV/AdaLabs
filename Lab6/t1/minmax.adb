package body MinMax is

   function Min (A : Arr) return Integer is
      Min_Val : Integer;
      begin
      Min_Val := A(A'First);
      for I in A'Range loop
         if Min_Val > A(I) then
            Min_Val := A(I);
         end if;
      end loop;
      return Min_Val;
   end Min;

   function Max (A : Arr) return Integer is
      Max_Val : Integer;
      begin
      Max_Val := A(A'First); 
      for I in A'Range loop
         if Max_Val < A(I) then
            Max_Val := A(I);
         end if;
      end loop;
      return Max_Val;
   end Max;

end MinMax;