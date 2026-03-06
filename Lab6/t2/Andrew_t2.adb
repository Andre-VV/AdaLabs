with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Sort;

procedure Main is
   use Sort;

   A : Arr(1..5);
   Sorted_A : Arr(1..5);

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

   procedure Display_sorted_Array_Values is
   begin
      for I in Sorted_A'Range loop
         Put(Sorted_A(I));
      end loop;
      New_Line;
   end Display_sorted_Array_Values;

begin
   Set_Array_Values;
   Display_Array_Values;

   Sorted_A := Selection_Sort(A);
   Put_Line ("Array sorted using Selection Sort:");
   Display_sorted_Array_Values;

   Sorted_A := A;
   Sorted_A := Insertion_Sort(A);
   Put_Line ("Array sorted using Insertion Sort:");
   Display_sorted_Array_Values;

   Sorted_A := A;
   Sorted_A := Bubble_Sort(A);
   Put_Line ("Array sorted using Bubble Sort:");
   Display_sorted_Array_Values;
end Main;

