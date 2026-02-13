with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is
type matrix33 is array(1..3,1..3) of Integer;
A : matrix33 := (others => (others => 0));
B : matrix33 := (others => (others => 0));
Result : matrix33 := (others => (others => 0));
Temp : Integer;

procedure write_matrix(M : in out matrix33) is
begin
Put_Line("Enter values for the matrix: ");
   for I in M'Range(1) loop
      for J in M'Range(2) loop
         Put(I);
         Put(" , ");
         Put(J);
         Put(" : ");
         Get(M(I,J));
      end loop;
      New_Line;
   end loop;
end write_matrix;

procedure read_matrix(M : in matrix33) is
begin 
   for I in M'Range(1) loop
      for J in M'Range(2) loop
         Put(M(I,J));
         Put(" ");
      end loop;
      New_Line;
   end loop;
end read_matrix;

begin
   write_matrix(A);
   write_matrix(B);
   --read_matrix(A);

   for I in A'Range(1) loop
      for J in A'Range(2) loop
         Temp := 0;
         for K in A'Range(2) loop
            Temp := Temp + A(I,K) * B(K,J);
         end loop;
         Result(I,J) := Temp;
      end loop;
   end loop;
   Put_Line("Result of A x B is: ");
   read_matrix(Result);
end main;