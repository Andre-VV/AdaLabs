with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is
   type My_Array is array (Integer range <>) of Integer;
   temp : Integer;
   

   procedure Fill_Array (Arr : in out My_Array) is
   begin
      for I in Arr'Range loop
         Put("Enter an integer for element " & Integer'Image(I) & ": ");
         Get(Arr(I));
      end loop;
      New_Line;
   end Fill_Array;
   procedure Print_Array (Arr : My_Array) is
   begin
      for I in Arr'Range loop
         Put(Arr(I)'Img);
         if I < Arr'Last then
            Put(", ");
         end if;
      end loop;
      New_Line;
   end Print_Array;


begin
   Put_Line("Enter the size of the array:");
   declare
      Size : Integer;
   begin
      Get(Size);
      declare
         A1 : My_Array(1..Size);
         A2 : My_Array(1..Size);
   begin
      Put_Line("First Array:");
      Fill_Array(A1);

      for I in A1'Range loop
         temp := 0;
         for J in I + 1..A1'Last loop
            if A1(J) > A1(I) then
               temp := temp + 1;
            end if;
         end loop;
         A2(I) := temp;
      end loop;
      Put_Line("Output Array:");
      Print_Array(A2);
   end;
   end;
exception
         when Data_Error =>
            Put_Line("Error: Invalid input. Please enter integers only.");
         when others =>
            Put_Line("An unexpected error occurred.");
   

end main;
   