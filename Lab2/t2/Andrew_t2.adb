with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;
procedure main is
   A : array (1 .. 10) of Integer := (20,15,84,33,54,5,65,1,67,41);
   One : Integer;
   Two : Integer;
   swaped : Boolean := False;
begin
   Put_Line("Unsorted array:");
   for I in A'Range loop
      Put(A(i));
      Put(" ");
   end loop;
   New_Line;
   for i in A'Range loop
      swaped := False;
      for j in A'First .. A'Last - 1 loop
         if A(j) > A(j + 1) then
            One := A(j);
            Two := A(j + 1);
            A(j) := Two;
            A(j + 1) := One;
            swaped := True;
         end if;
      end loop;
      if swaped = False then
         exit;
      end if;
   end loop;
   Put_Line("Sorted array:");
   for I in A'Range loop
      Put(A(i));
      Put(" ");
   end loop;
end main;
