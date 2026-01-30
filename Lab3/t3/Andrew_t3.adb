with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Float_Text_IO;

procedure main is
   Value1 : Float;
   Value2 : Float;
   Close : Boolean;
   function Nearly_Equal(
      A : in Float;
      B : in Float)
      return Boolean
   is
      Tollerance : Float;
      Difference : Float;
   begin
      if A > B then
         Tollerance := B * 0.00001;
      else
         Tollerance := A * 0.00001;
      end if;
      Difference := abs(A - B);
      if Difference <= Tollerance then
         return True;
      else
         return False;
      end if;
   end Nearly_Equal;
begin
   Put_Line("Enter two numbers:");
   Get(Value1);
   Get(Value2);
   Close := Nearly_Equal(Value1, Value2);
   if Close then
      Put_Line("The numbers are nearly equal.");
   else
      Put_Line("The numbers are not nearly equal.");
   end if;
end main;
      