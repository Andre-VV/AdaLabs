package body Sort is

   function Selection_Sort (A : Arr) return Arr is
      B : Arr (A'Range) := A;
      min_idx : Integer;
      temp : Integer;
      begin
      for I in B'Range loop
         min_idx := I;
         for J in I + 1 .. B'Last loop
            if B(J) < B(min_idx) then
               min_idx := J;
            end if;
         end loop;
         temp := B(I);
         B(I) := B(min_idx);
         B(min_idx) := temp;
      end loop;
      return B;
   end Selection_Sort;

   function Insertion_Sort (A : Arr) return Arr is
      B : Arr (A'Range) := A;
      key : Integer;
      J : Integer;
      begin
         for I in B'First + 1 .. B'Last loop
            key := B(I);
            J := I - 1;

            while J >= B'First and then B(J) > key loop
               B(J + 1) := B(J);
               J := J - 1;
            end loop;
            B(J + 1) := key;
         end loop;
         return B;
   end Insertion_Sort;

   function Bubble_Sort (A : Arr) return Arr is
      B : Arr (A'Range) := A;
      I : Integer;
      J : Integer;
      temp : Integer;
      swapped : Boolean;
      begin
         for I in B'First .. B'Last - 1 loop
            swapped := False;
            for J in B'First .. B'Last - I loop
               if B(J) > B(J + 1) then
                  temp := B(J);
                  B(J) := B(J + 1);
                  B(J + 1) := temp;
                  swapped := True;
               end if;
            end loop;
            exit when not swapped;
         end loop;
         return B;
   end Bubble_Sort;


end Sort;