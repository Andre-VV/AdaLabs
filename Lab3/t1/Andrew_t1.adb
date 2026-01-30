with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Float_Text_IO;

procedure main is
   Value1 : Float;
   Value2 : Float;
   Output : Float;
   function Find_Larger(
      A : in Float;
      B : in Float) 
      return Float 
   is
   begin
      if A > B then
         return A;
      else
         return B;
      end if;
   end Find_Larger;
begin
   Put_Line("Enter two numbers:");
   Get(Value1);
   Get(Value2);
   Output := Find_Larger(Value1, Value2);
   Put("The larger number is: ");
   Put(Output,1);
end main;
