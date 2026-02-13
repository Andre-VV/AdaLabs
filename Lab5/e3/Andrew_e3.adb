with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure lab5 is
C : array(1..3,1..3,1..3) of Integer := (others => (others => (others => 0)));
D : array (1..3,1..3) of Integer := ((1,1,1),(2,2,2),(3,3,3));
begin
   C(1,3,2) := 55;
   Put_Line("Array C is: ");
   for I in C'Range(1) loop
      for J in C'Range(2) loop
         for K in C'Range(3) loop
            Put(C(I,J,K));
            Put(" ");
         end loop;
         New_Line;
      end loop;
      New_Line;
   end loop;
end lab5;
