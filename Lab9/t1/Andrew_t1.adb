with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
--using the queues and stacks packages from lab 7
with queues; use queues;
with stacks; use stacks;

procedure Main is
   type My_Array is array (Integer range <>) of Integer;
   
   Q1 : Queue;
   found : Boolean := False;


   function Bubble_Sort (A : My_Array) return My_Array is
      B : My_Array (A'Range) := A;
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
      Put_Line("Enter the size of the arrays:");
      declare
         Size : Integer;
         Size2 : Integer;
      begin
         Get(Size);
         Get(Size2);
         declare
            A1 : My_Array(1..Size);
            A2 : My_Array(1..Size2);
      begin
      Put_Line("First Array:");
      Fill_Array(A1);
      Put_Line("Second Array:");
      Fill_Array(A2);

      --Sort A1
      A1 := Bubble_Sort(A1);

      for I in A2'Range loop
         for J in A1'Range loop
            if A2(I) = A1(J) then
               Enqueue(Q1, A1(J));
               
            end if;
         end loop;
      end loop;
      for I in A1'Range loop
         found := False;
         for J in A2'Range loop
            if A1(I) = A2(J) then
               found := True;
               exit;
            end if;
         end loop;
         if not found then
            Enqueue (Q1,A1(I));
         end if;
      end loop;

      for I in A1'Range loop
         A1(I) := get_first_element (Q1);
         Dequeue(Q1);
      end loop;
      Put_Line("Array 1 after processing:");
      Print_Array(A1);
         end;
      end;

      exception
         when Data_Error =>
            Put_Line("Error: Invalid input. Please enter integers only.");
         when others =>
            Put_Line("An unexpected error occurred.");
   end Main;