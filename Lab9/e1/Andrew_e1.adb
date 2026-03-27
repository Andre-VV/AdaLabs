with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Exception_Example is
   A,B,Result : Integer;
begin
   Put("Enter two integers (A and B):");
   Get(A);
   Get(B);
   begin
      Result := A / B;
      Put_Line("Result: " & Integer'Image(Result));
   exception
      when Constraint_Error =>
         Put_Line("Error: Division by zero is not allowed.");
      end;
      Put_Line("Program execution continues..");
      end Exception_Example;