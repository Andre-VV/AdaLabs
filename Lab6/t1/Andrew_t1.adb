with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with MinMax;

procedure Main is
   use MinMax;

   A : Arr(1..5);
   Min_Val : Integer;
   Max_Val : Integer;

   procedure Set_Array_Values is
   begin
      for I in A'Range loop
         Put ("Enter value for element " & Integer'Image(I) & ": ");
         Get (A(I));
      end loop;
   end Set_Array_Values;

   procedure Display_Array_Values is
   begin
      Put_Line ("Array values:");
      for I in A'Range loop
         Put(A(I));
      end loop;
      New_Line;
   end Display_Array_Values;

begin
   Set_Array_Values;
   Display_Array_Values;
   Min_Val := Min(A);
   Max_Val := Max(A);
   Put_Line ("Minimum value in the array is: " & Integer'Image(Min_Val));
   Put_Line ("Maximum value in the array is: " & Integer'Image(Max_Val));
end Main;