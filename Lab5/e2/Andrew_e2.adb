with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure lab5 is 
type vector_6 is array(1..6) of Integer;
A:vector_6;
B:vector_6;

C:array(1..6) of Integer;
D:array(1..6) of Integer;

begin
   A:=(4,5,6,7,8,9);
   B:=(1,2,3,4,5,6);

   B:=A;

   Put_Line("Array A:");
   for I in A'Range loop
      Put(B(I));
      Put(" ");
   end loop;
   New_Line;
end lab5;

